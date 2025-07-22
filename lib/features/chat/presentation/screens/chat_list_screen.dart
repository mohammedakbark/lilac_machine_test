import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lilac_machine_test/config/router/route_paths.dart';
import 'package:lilac_machine_test/core/components/app_laoding.dart';
import 'package:lilac_machine_test/core/components/app_margin.dart';
import 'package:lilac_machine_test/core/components/app_spacer.dart';
import 'package:lilac_machine_test/core/components/custome_network_img.dart';
import 'package:lilac_machine_test/core/theme/app_colors.dart';
import 'package:lilac_machine_test/core/theme/app_styles.dart';
import 'package:lilac_machine_test/core/utils/responsive_helper.dart';
import 'package:lilac_machine_test/features/auth/presentation/bloc/auth%20controller/auth_controller_bloc.dart';
import 'package:lilac_machine_test/features/chat/presentation/bloc/chat_profile_controller/chat_profile_controller_cubit.dart';

class ChatListScreen extends StatefulWidget {
  const ChatListScreen({super.key});

  @override
  State<ChatListScreen> createState() => _ChatListScreenState();
}

class _ChatListScreenState extends State<ChatListScreen> {
  @override
  void initState() {
    super.initState();
    context.read<ChatProfileControllerCubit>().onFetchChatProfiels();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Messages"),
        actions: [
          IconButton(
            onPressed: () async {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text("Logout ?"),
                  actions: [
                    TextButton(
                      onPressed: () {
                        context.pop();
                      },
                      child: Text(
                        "Cancel",
                        style: AppStyle.mediumStyle(color: AppColors.BLACK),
                      ),
                    ),
                    TextButton(
                      onPressed: () async {
                        await AuthControllerBloc().deletePref();
                        context.go(RoutePaths.splash);
                      },
                      child: Text(
                        "Logout",
                        style: AppStyle.mediumStyle(color: AppColors.PRIMARY),
                      ),
                    ),
                  ],
                ),
              );
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: AppMargin(
        child: Center(
          child:
              BlocBuilder<
                ChatProfileControllerCubit,
                ChatProfileControllerState
              >(
                builder: (context, state) {
                  switch (state) {
                    case ChatPorfileControllerErrorState():
                      {
                        return Text(state.error);
                      }
                    case ChatPorfileControllerSuccessState():
                      {
                        final profiles = state.lsitOfProfiles;
                        return Column(
                          children: [
                            AppSpacer(heightPortion: .02),

                            TextFormField(
                              decoration: InputDecoration(
                                hintText: "Search",
                                hintStyle: AppStyle.normalStyle(),
                                suffixIcon: Icon(CupertinoIcons.search),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: AppColors.GREYSHADE,
                                  ),
                                  borderRadius: BorderRadius.circular(
                                    ResponsiveHelper.borderRadiusLarge,
                                  ),
                                ),
                              ),
                            ),
                            AppSpacer(heightPortion: .02),
                            Expanded(
                              child: ListView.separated(
                                separatorBuilder: (context, index) => Divider(
                                  color: AppColors.GREYSHADE.withAlpha(100),
                                ),
                                itemCount: profiles.length,
                                itemBuilder: (context, index) {
                                  final profile = profiles[index];
                                  return ListTile(
                                    onTap: () async {
                                      final myId = await AuthControllerBloc()
                                          .getUserData;
                                      if (mounted) {
                                        context.push(
                                          RoutePaths.chatScreen,
                                          extra: {
                                            "senderId": myId.id,
                                            'name': profile.name,
                                            "isOnline": profile.isOnline,
                                            "receiverId": profile.id,
                                            "profile": profile.profilePhotoUrl,
                                          },
                                        );
                                      }
                                    },
                                    leading: Container(
                                      clipBehavior: Clip.antiAlias,
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        color: AppColors.PRIMARY,
                                        shape: BoxShape.circle,
                                      ),
                                      child: CustomeNetworkImg(
                                        imageURL: profile.profilePhotoUrl,
                                      ),
                                    ),
                                    title: Text(
                                      profile.name,
                                      style: AppStyle.mediumStyle(
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        );
                      }
                    default:
                      {
                        return AppLoading();
                      }
                  }
                },
              ),
        ),
      ),
    );
  }
}
