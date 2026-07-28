Feature: Login de usuario

  Background:
    Given el usuario está en la página de Login
    And el usuario tiene una cuenta activa valida


  @login_exitoso
  Scenario Outline: Login exitoso con credenciales validas
    When el usuario ingresa correo '<correo>'
    And el usuario ingresa contraseña '<contraseña>'
    And el usuario hace clic en el botón de "Iniciar sesión"
    Then el usuario es redirigido al dashboard de la aplicación
    And su nombre se muestra en el header de la página
    And Se muestra un mensaje de bienvenida con el nombre del usuario

    Examples:
      | Correo           | Contraseña  |
      | user@example.com | password123 |
      | test@example.com | testpass456 |

  @login_fallido
  Scenario Outline: Login fallido con credenciales invalidas
    When el usuario ingresa correo electrónico inválido '<correo_invalido>'
    And el usuario ingresa contraseña inválida '<contraseña_invalida>'
    And el usuario hace clic en el botón de "Iniciar sesión"
    Then se muestra un mensaje de error indicando que las credenciales son incorrectas

    Examples:
      | correo_invalido     | contraseña_invalida |
      | invalid@example.com | wrongpass456        |
