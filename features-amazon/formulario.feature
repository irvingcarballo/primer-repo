Feature: Formulario de contacto para la pagina de amazon

  Scenario Outline: Formulario de contacto con diferentes criterios y casos de borde
    Given el usuario está en la página de contacto de Amazon (https://www.amazon.com/contact-us)
    When el usuario ingresa "<correo>" en el campo de correo electrónico
    And el usuario ingresa "<mensaje>" en el campo de mensaje
    And hace clic en el botón de enviar
    Then el sistema muestra la respuesta esperada "<resultado_esperado>"

    Examples:
      | correo                 | mensaje                              | resultado_esperado                                                  |
      | irvingcs.dev@gmail.com | Tengo una pregunta sobre un producto | Gracias por su mensaje. Nos pondremos en contacto con usted pronto. |
      | ana@error.com          | Necesito ayuda con un pedido         | Ingrese un correo valido.                                           |
      |                        | Quiero devolver un producto          | Ingrese un correo valido.                                           |