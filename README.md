# Operaciones-morfologicas-PDI
Procesamiento de imagenes usando operaciones morfologicas

# Que son?
Morphology es un amplio conjunto de operaciones de procesamiento de imágenes que procesan imágenes basadas en formas. En una operación morfológica, cada píxel de la imagen se ajusta en función del valor de otros píxeles de su vecindad. Al elegir el tamaño y la forma de la vecindad, puede construir una operación morfológica que sea sensible a formas específicas en la imagen de entrada.

## Dilatacion
Dilatación
El valor del píxel de salida es el valor de todos los píxeles de la vecindad.Máximo En una imagen binaria, un píxel se establece en si alguno de los píxeles vecinos tiene el valor .11
La dilatación morfológica hace que los objetos sean más visibles y rellena pequeños agujeros en los objetos. 

## Erosión
Erosión
El valor del píxel de salida es el valor de todos los píxeles de la vecindad.Mínimo En una imagen binaria, un píxel se establece en si alguno de los píxeles vecinos tiene el valor .00
La erosión morfológica elimina las islas y los objetos pequeños para que sólo queden objetos sustantivos.
