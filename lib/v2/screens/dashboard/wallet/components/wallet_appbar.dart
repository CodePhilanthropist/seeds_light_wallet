import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:seeds/v2/components/profile_avatar.dart';
import 'package:seeds/v2/domain-shared/ui_constants.dart';
import 'package:seeds/v2/navigation/navigation_service.dart';
import 'package:seeds/v2/screens/dashboard/wallet/interactor/viewmodels/wallet_bloc.dart';
import 'package:seeds/v2/screens/dashboard/wallet/interactor/viewmodels/wallet_state.dart';

class WalletAppBar extends StatelessWidget implements PreferredSizeWidget {
  const WalletAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WalletBloc, WalletState>(
      builder: (context, state) {
        return AppBar(
          actions: [
            const SizedBox(width: horizontalEdgePadding),
            IconButton(
              iconSize: 36,
              splashRadius: 26,
              onPressed: () => NavigationService.of(context).navigateTo(Routes.profile),
              icon: ProfileAvatar(
                size: 36,
                account: state.profile.account,
                nickname: state.profile.nickname,
                image: state.profile.image,
              ),
            ),
            Expanded(child: Image.asset('assets/images/seeds_symbol_forest.png', fit: BoxFit.fitHeight)),
            IconButton(
              splashRadius: 26,
              icon: SvgPicture.asset('assets/images/wallet/app_bar/scan_qr_code_icon.svg', height: 36),
              onPressed: () => NavigationService.of(context).navigateTo(Routes.scanQRCode),
            ),
            const SizedBox(width: horizontalEdgePadding),
          ],
        );
      },
    );
  }
}
