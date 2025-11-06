# flutter_clean_arc

---

## road map for this workflow

PRESENTATION (UI) → BUSINESS LOGIC (BLoC + UseCases) → DATA (Repository + API)

---

UI (UserPage)
⬇
Bloc (UserBloc)
⬇
UseCase (GetUsers / CreateUser)
⬇
Repository Interface (UserRepository)
⬇
Repository Implementation (UserRepositoryImpl)
⬇
Remote Data Source (UserRemoteDataSource)
⬇
API (via DioClient)
