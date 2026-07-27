Feature: Registro de usuario en Amazon

  Scenario: Registro exitoso con datos válidos
    Given el usuario está en la página de registro de Amazon (https://www.amazon.com/ap/register)
    When el usuario ingresa información válida en todos los campos
    And el usuario hace clic en el botón de "Crear tu cuenta"
    Then el usuario es redirigido a la página principal de Amazon
    And su nombre se muestra en la esquina superior derecha de la página
    And Se muestra un mensaje de bienvenida con el nombre del usuario

  Scenario: Registro fallido con email ya existente
    Given el usuario está en la página de registro de Amazon (https://www.amazon.com/ap/register)
    When el usuario ingresa un correo electrónico ya registrado y una contraseña
    And el usuario hace clic en el botón de "Crear tu cuenta"
    Then se muestra un mensaje de error indicando que el email ya está registrado


  Scenario: Registro fallido con campos vacíos
    Given el usuario está en la página de registro de Amazon (https://www.amazon.com/ap/register)
    When el usuario deja los campos de correo electrónico y contraseña vacíos
    And el usuario hace clic en el botón de "Crear tu cuenta"
    Then se muestra un mensaje de error indicando que los campos son obligatorios
