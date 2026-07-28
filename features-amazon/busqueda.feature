Feature: Funcionalidad de la sección de busqueda en Amazon

  @busqueda_productos
  Scenario Outline: Búsqueda de productos con diferentes criterios y casos de borde
    Given el usuario está en la página principal de Amazon (https://www.amazon.com/)
    And el usuario ha iniciado sesión con credenciales válidas
    When el usuario ingresa "<termino_busqueda>" en la barra de búsqueda
    And hace clic en el botón de búsqueda
    Then el sistema muestra la respuesta esperada "<resultado_esperado>"

    Examples:
      | termino_busqueda    | resultado_esperado                                       |
      | Computadora HP      | Muestra productos relacionados con "Computadora HP"      |
      | Laptop Dell i7 16GB | Muestra productos específicos para "Laptop Dell i7 16GB" |
      |                     | Permanece en la página actual o muestra alerta de texto  |
      | @#$%&*!             | Muestra mensaje de "No se encontraron resultados"        |

  Scenario: Búsqueda fallida de un producto inexistente
    Given el usuario está en la página principal de Amazon (https://www.amazon.com/)
    And el usuario ha iniciado sesión con credenciales válidas
    When el usuario ingresa "ProductoInexistente123" en la barra de búsqueda
    And hace clic en el botón de búsqueda
    Then se muestra un mensaje indicando que no se encontraron resultados para "ProductoInexistente123"