  feature: Login de usuario

  Scenario: Login exitoso con credenciales validas
    Given el usuario está en la página de Login
    And el usuario tiene una cuenta activa valida
    When el usuario ingresa correo electrónico y contraseña válidos
    And el usuario hace clic en el botón de "Iniciar sesión"
    Then el usuario es redirigido al dashboard de la aplicación
    And su nombre se muestra en el header de la página
    And Se muestra un mensaje de bienvenida con el nombre del usuario

  Scenario: Login fallido con credenciales invalidas
    Given el usuario está en la página de Login
    And el usuario tiene una cuenta activa valida
    When el usuario ingresa correo electrónico y contraseña inválidos
    And el usuario hace clic en el botón de "Iniciar sesión"
    Then se muestra un mensaje de error indicando que las credenciales son incorrectas

  Scenario: Login fallido con correo electrónico no registrado
    Given el usuario está en la página de Login
    And el usuario no tiene una cuenta registrada
    When el usuario ingresa un correo electrónico no registrado y una contraseña
    And el usuario hace clic en el botón de "Iniciar sesión"
    Then se muestra un mensaje de error indicando que las credenciales son incorrectas

  Scenario: Login fallido con campos vacíos
    Given el usuario está en la página de Login
    When el usuario deja los campos de correo electrónico y contraseña vacíos
    And el usuario hace clic en el botón de "Iniciar sesión"
    Then se muestra un mensaje de error indicando que los campos son obligatorios

  Scenario: Login fallido con contraseña incorrecta
    Given el usuario está en la página de Login
    And el usuario tiene una cuenta activa valida
    When el usuario ingresa un correo electrónico válido y una contraseña incorrecta
    And el usuario hace clic en el botón de "Iniciar sesión"
    Then se muestra un mensaje de error indicando que las credenciales son incorrectas

  Scenario: Login fallido con correo electrónico inválido
    Given el usuario está en la página de Login
    When el usuario ingresa un correo electrónico inválido y una contraseña
    And el usuario hace clic en el botón de "Iniciar sesión"
    Then se muestra un mensaje de error indicando que las credenciales son incorrectas

