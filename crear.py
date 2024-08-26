import qrcode
import os

# Función para crear el código QR
def crear_qr(nombre, apellido, identificacion):
    data = f"{nombre} {apellido} {identificacion}"
    qr = qrcode.QRCode(
        version=1,
        error_correction=qrcode.constants.ERROR_CORRECT_L,
        box_size=10,
        border=4,
    )
    qr.add_data(data)
    qr.make(fit=True)
    
    img = qr.make_image(fill_color="black", back_color="white")
    
    # Crear la carpeta "QR" si no existe
    if not os.path.exists("QR"):
        os.makedirs("QR")
    
    filename = f"QR/{nombre}_{apellido}_qr.png"
    img.save(filename)
    print(f"Código QR creado y guardado como '{filename}'.")

# Solicitar datos al usuario
nombre = input("Ingresa tu nombre: ")
apellido = input("Ingresa tu apellido: ")
identificacion = input("Ingresa tu número de identificación: ")

# Crear el código QR
crear_qr(nombre, apellido, identificacion)
