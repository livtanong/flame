import 'package:examples/platform/page_provider.dart';
import 'package:web/web.dart';

class PageProviderImpl extends PageProvider {
  @override
  String? getPage() {
    var page = window.location.search;
    if (page.startsWith('?')) {
      page = page.substring(1);
    }
    return page;
  }
}
