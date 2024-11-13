import 'package:app/app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_unit/src/l10n/gen/app_l10n.dart';
import 'package:tolyui/tolyui.dart';

enum AppTab {
  widgets('/widget', TolyIcon.icon_layout),
  painter('/painter', TolyIcon.dingzhi1),
  knowledge('/knowledge', TolyIcon.icon_artifact),
  tools('/tools', TolyIcon.icon_fast),
  mine('/account', TolyIcon.yonghu);

  final IconData icon;
  final String path;

  const AppTab(this.path, this.icon);

  String label(AppL10n l10n) {
    if (kAppEnv.isDesktopUI) {
      return switch (this) {
        AppTab.widgets => l10n.deskTabWidgets,
        AppTab.painter => l10n.deskTabPainter,
        AppTab.knowledge => l10n.deskTabKnowledge,
        AppTab.tools => l10n.deskTabTools,
        AppTab.mine => l10n.deskTabMine,
      };
    }
    return switch (this) {
      AppTab.widgets => l10n.mobileTabWidgets,
      AppTab.painter => l10n.mobileTabPainter,
      AppTab.knowledge => l10n.mobileTabKnowledge,
      AppTab.tools => l10n.mobileTabTools,
      AppTab.mine => l10n.mobileTabMine,
    };
  }

  MenuMeta menu(AppL10n l10n) => MenuMeta(
        label: label(l10n),
        icon: icon,
        router: path,
      );
}
