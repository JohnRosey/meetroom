import 'package:supabase/supabase.dart';

import '../../app/constants/app.supabase.credentials.dart';

class SupabaseAPI {
  static SupabaseClient supabaseClient =
      SupabaseClient(SupabaseCredentials.APIURL, SupabaseCredentials.APIKEY);
}
