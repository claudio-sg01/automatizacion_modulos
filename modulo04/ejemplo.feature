Feature: Login de usuario


Background:
  Given que el usuario ha iniciado sesión como administrador
@Tags: Son etiquetas (que comienzan con @) para categorizar escenarios. Permiten ejecutar grupos específicos de pruebas (por ejemplo: @smoke, @regression, @login).


  Scenario Outline: Inicio de sesión exitoso
    Given que el usuario está en la página de login
    When el usuario ingresa credenciales válidas
    Then debería ser redirigido al panel principal
    And debería ver un mensaje de bienvenida

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

Gherkin

@smoke @login
Scenario: Inicio de sesión exitoso
  ...
Comentarios: Cualquier línea que comience con el símbolo # es ignorada por el motor de ejecución y sirve para añadir notas aclaratorias.

Gherkin

# Este escenario verifica la recuperación de contraseña
Scenario: Recuperar contraseña