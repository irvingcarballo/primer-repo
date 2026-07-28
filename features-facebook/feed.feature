Feature: Sección de contenido principal de facebook

  Background:
    Given el usuario está en la página principal de Facebook
  ## Importante: Asegúrate de que el usuario haya iniciado sesión antes de ejecutar los escenarios.
  @smoke
  Scenario Outline: Verificación de la sección de contenido principal con diferentes criterios y casos de borde
    When el usuario ingresa "<criterio>" en la barra de búsqueda
    And hace clic en el botón de búsqueda
    Then el sistema muestra la respuesta esperada "<resultado_esperado>"

    Examples:
      | criterio | resultado_esperado                                      |
      | Amigos   | Muestra la lista de amigos del usuario                  |
      | Grupos   | Muestra los grupos a los que pertenece el usuario       |
      | Páginas  | Muestra las páginas que sigue el usuario                |
      |          | Permanece en la página actual o muestra alerta de texto |
      | @#$%&*!  | Muestra mensaje de "No se encontraron resultados"       |

  @smoke
  Scenario: Verificación de la sección de contenido principal con un criterio inexistente
    When el usuario ingresa "CriterioInexistente123" en la barra de búsqueda
    And hace clic en el botón de búsqueda
    Then se muestra un mensaje indicando que no se encontraron resultados para "CriterioInexistente123"

  @smoke
  Scenario: Verificación de la sección de contenido principal con un criterio vacío
    When el usuario deja el campo de búsqueda vacío
    And hace clic en el botón de búsqueda
    Then se muestra un mensaje indicando que el campo de búsqueda no puede estar vacío