¿Qué es Gherkin y para qué sirve en BDD?
R: Es un lenguaje sencillo, estructurado y de lectura humana que se utiliza para definir el comportamiento de un sistema. Está diseñado para ser comprendido tanto por desarrolladores y testers como por clientes, dueños de producto (Product Owners) y analistas de negocio.

En el contexto de BDD (Behavior-Driven Development), sirve como el "lenguaje común" para crear especificaciones ejecutables que actúan como documentación viva y como los casos de prueba mismos.

1. Sintaxis
Feature (Característica): Define qué funcionalidad se está probando (el título del módulo).

Scenario (Escenario): Describe una situación específica dentro de la funcionalidad.

Given (Dado): Establece el contexto inicial o estado previo (precondiciones).

When (Cuando): Describe la acción que el usuario realiza.

Then (Entonces): Define el resultado esperado (postcondiciones).

And / But: Permiten añadir pasos adicionales a un Given, When o Then para mantener el archivo legible y evitar repeticiones.

Ejemplo:

Feature: Login de usuario

  Scenario: Inicio de sesión exitoso
    Given que el usuario está en la página de login
    When el usuario ingresa credenciales válidas
    Then debería ser redirigido al panel principal
    And debería ver un mensaje de bienvenida

2. Escenarios Parametrizados

Scenario Outline: Define la estructura de la prueba con marcadores de posición (<variable>).

Examples: Es una tabla que contiene los valores que reemplazarán a los marcadores en cada ejecución.

Ejemplo:

Gherkin

Scenario Outline: Login fallido con credenciales incorrectas
  Given que el usuario está en la página de login
  When ingresa el usuario "<usuario>" y la contraseña "<password>"
  Then debería ver un mensaje de error

  Examples:
    | usuario | password |
    | admin   | clave123 |
    | pepe    | incorrecta|
3. Elementos Avanzados: Background, Tags y Comentarios
Para mantener los archivos organizados y escalables, se utilizan estas herramientas:

Background (Antecedentes): Se usa cuando todos los escenarios de una misma Feature comparten los mismos pasos iniciales. Se ejecuta antes de cada escenario.

Gherkin

Background:
  Given que el usuario ha iniciado sesión como administrador
@Tags: Son etiquetas (que comienzan con @) para categorizar escenarios. Permiten ejecutar grupos específicos de pruebas (por ejemplo: @smoke, @regression, @login).

Gherkin

@smoke @login
Scenario: Inicio de sesión exitoso
  ...
Comentarios: Cualquier línea que comience con el símbolo # es ignorada por el motor de ejecución y sirve para añadir notas aclaratorias.

Gherkin

# Este escenario verifica la recuperación de contraseña
Scenario: Recuperar contraseña