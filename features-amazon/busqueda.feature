Feature: Funcionalidad de la sección de busqueda en Amazon

  Scenario: Búsqueda exitosa de un producto existente
    Given el usuario está en la página principal de Amazon (https://www.amazon.com/)
    And el usuario ha iniciado sesión con credenciales válidas
    When el usuario ingresa "COmputadora HP" en la barra de búsqueda
    And hace clic en el botón de búsqueda
    Then se muestran resultados relacionados con "Computadora HP"
    And el primer resultado contiene el nombre del producto "Computadora HP"

  Scenario: Búsqueda fallida de un producto inexistente
    Given el usuario está en la página principal de Amazon (https://www.amazon.com/)
    And el usuario ha iniciado sesión con credenciales válidas
    When el usuario ingresa "ProductoInexistente123" en la barra de búsqueda
    And hace clic en el botón de búsqueda
    Then se muestra un mensaje indicando que no se encontraron resultados para "ProductoInexistente123"