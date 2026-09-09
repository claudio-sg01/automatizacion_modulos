Feature: Login de usuario

Background:
  Given el usuario coloca el "<numero_tarjeta>" en el campo "Número de tarjeta"
  And   el usuario coloca su "<password>" en el campo "Contraseña"

# Este escenario verifica el login exioso
@login @hp
  Scenario Outline: Inicio de sesión exitoso
    When el usuario da clik en el boton "Continuar"
    Then deberia de entrar al dashboard de la web

      Examples:
    | numero_tarjeta | password  |
    | admin          | clave123  |
    | pepe           | incorrecta|

# Este escenario verifica la recuperación de contraseña
@login @ea
Scenario Outline: Olvido contraseña
    When el usuario da clik en el boton ""
    Then deberia de entrar al dashboard de la web

  Examples:
    | numero_tarjeta | password  |
    | admin          | clave123  |
    | pepe           | incorrecta|