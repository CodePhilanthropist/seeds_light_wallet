import 'package:equatable/equatable.dart';
import 'package:seeds/datasource/remote/model/profile_model.dart';
import 'package:seeds/domain-shared/page_command.dart';
import 'package:seeds/domain-shared/page_state.dart';
import 'package:seeds/screens/profile_screens/contribution/interactor/viewmodels/scores_view_model.dart';

enum CitizenshipUpgradeStatus { notReady, canResident, canCitizen }

/// --- STATE
class ProfileState extends Equatable {
  final PageState pageState;
  final PageCommand? pageCommand;
  final String? errorMessage;
  final ProfileModel? profile;
  final ScoresViewModel? score;
  final bool isOrganization;
  final bool showLogoutButton;
  final bool hasSecurityNotification;
  final CitizenshipUpgradeStatus citizenshipUpgradeStatus;
  final bool isImportAccountEnabled;

  const ProfileState({
    required this.pageState,
    this.pageCommand,
    this.errorMessage,
    this.profile,
    this.score,
    required this.isOrganization,
    required this.showLogoutButton,
    required this.hasSecurityNotification,
    required this.citizenshipUpgradeStatus,
    required this.isImportAccountEnabled,
  });

  @override
  List<Object?> get props => [
        pageState,
        pageCommand,
        errorMessage,
        profile,
        score,
        isOrganization,
        showLogoutButton,
        hasSecurityNotification,
        citizenshipUpgradeStatus,
        isImportAccountEnabled,
      ];

  bool get showShimmer => pageState == PageState.loading || pageState == PageState.initial;

  String get accountStatus => isOrganization ? 'Organization' : profile?.statusString ?? '';

  ProfileState copyWith({
    PageState? pageState,
    PageCommand? pageCommand,
    String? errorMessage,
    ProfileModel? profile,
    ScoresViewModel? score,
    bool? isOrganization,
    bool? showLogoutButton,
    bool? hasSecurityNotification,
    CitizenshipUpgradeStatus? citizenshipUpgradeStatus,
    bool? isImportAccountEnabled,
  }) {
    return ProfileState(
      pageState: pageState ?? this.pageState,
      pageCommand: pageCommand,
      errorMessage: errorMessage,
      profile: profile ?? this.profile,
      score: score ?? this.score,
      isOrganization: isOrganization ?? this.isOrganization,
      showLogoutButton: showLogoutButton ?? this.showLogoutButton,
      hasSecurityNotification: hasSecurityNotification ?? this.hasSecurityNotification,
      citizenshipUpgradeStatus: citizenshipUpgradeStatus ?? this.citizenshipUpgradeStatus,
      isImportAccountEnabled: isImportAccountEnabled ?? this.isImportAccountEnabled,
    );
  }

  factory ProfileState.initial(bool isImportAccountEnabled) {
    return ProfileState(
      pageState: PageState.initial,
      isOrganization: false,
      showLogoutButton: false,
      hasSecurityNotification: false,
      citizenshipUpgradeStatus: CitizenshipUpgradeStatus.notReady,
      isImportAccountEnabled: isImportAccountEnabled,
    );
  }
}
