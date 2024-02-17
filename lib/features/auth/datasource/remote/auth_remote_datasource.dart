import 'package:supabase_flutter/supabase_flutter.dart';

class AuthRemoteDataSource {
  final SupabaseClient supabaseClient;

  AuthRemoteDataSource({required this.supabaseClient});
  Future<void> signInWithFacebook() async {
    try {
      final response =
          await supabaseClient.auth.signInWithOAuth(OAuthProvider.facebook);
    } catch (e) {
      throw AuthException(e.toString());
    }
  }

  Future<void> signInWithGoogle() async {
    try {
      await supabaseClient.auth.signInWithOAuth(OAuthProvider.google);
    } catch (e) {
      throw AuthException(e.toString());
    }
  }

  Future<void> signOut() async {
    try {
      await supabaseClient.auth.signOut();
    } catch (e) {
      throw AuthException(e.toString());
    }
  }

  Future<String?> getCurrentUserId() async {
    try {
      final user = supabaseClient.auth.currentUser;
      return user?.id;
    } catch (e) {
      throw AuthException(e.toString());
    }
  }
}
