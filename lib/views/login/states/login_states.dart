abstract class LoginStates {}
class LoginInitial extends LoginStates{}
class LoginLoading extends LoginStates{}


abstract class LogInStates{}
class LogInInitialState extends LogInStates{}
class LogInSuccessState extends LogInStates{}
class LogInErrorState extends LogInStates{}


class cahngeSecureText extends LogInStates{}