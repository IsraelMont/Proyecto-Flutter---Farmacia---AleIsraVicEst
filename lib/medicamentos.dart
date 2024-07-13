class Medicamento {
  final String nombre;
  final double precio;
  final String categoria;
  final String descripcion;
  final String imagenPath;

  const Medicamento({
    required this.nombre,
    required this.precio,
    required this.categoria,
    required this.descripcion,
    required this.imagenPath,
  });

  String? get imagen => null;

  // Métodos para mostrar detalles del medicamento
  String getDetalles() {
    return 'Nombre: $nombre\nPrecio: \$${precio.toStringAsFixed(2)}\nCategoría: $categoria\nDescripción: $descripcion';
  }
}

// Lista de medicamentos
const List<Medicamento> medicamentos = [
  // Analgesicos
  Medicamento(
    nombre: 'Paracetamol',
    precio: 5.99,
    categoria: 'Analgesicos',
    descripcion:
        'Analgésico y antipirético para aliviar dolores leves a moderados y fiebre.',
    imagenPath: 'assets/images/paracetamol.png',
  ),
  Medicamento(
    nombre: 'Ibuprofeno',
    precio: 6.99,
    categoria: 'Analgesicos',
    descripcion:
        'Analgésico y antiinflamatorio no esteroideo utilizado para el alivio del dolor y la inflamación.',
    imagenPath: 'assets/images/ibuprofeno.png',
  ),
  Medicamento(
    nombre: 'Aspirina',
    precio: 4.50,
    categoria: 'Analgesicos',
    descripcion:
        'Analgésico y antipirético utilizado para el alivio del dolor y la fiebre.',
    imagenPath: 'assets/images/aspirina.png',
  ),
  Medicamento(
    nombre: 'Naproxeno',
    precio: 7.25,
    categoria: 'Analgesicos',
    descripcion:
        'Analgésico y antiinflamatorio utilizado para aliviar el dolor y la inflamación.',
    imagenPath: 'assets/images/naproxeno.png',
  ),
  Medicamento(
    nombre: 'Diclofenaco',
    precio: 4.75,
    categoria: 'Analgesicos',
    descripcion:
        'Analgésico y antiinflamatorio no esteroideo para el tratamiento de dolores y inflamaciones.',
    imagenPath: 'assets/images/diclofenaco.png',
  ),
  Medicamento(
    nombre: 'Tramadol',
    precio: 8.50,
    categoria: 'Analgesicos',
    descripcion:
        'Analgesia de acción central para el alivio del dolor moderado a severo.',
    imagenPath: 'assets/images/tramadol.png',
  ),
  Medicamento(
    nombre: 'Morfina',
    precio: 15.75,
    categoria: 'Analgesicos',
    descripcion:
        'Potente analgésico opioide utilizado para el manejo del dolor intenso.',
    imagenPath: 'assets/images/morfine.png',
  ),
  Medicamento(
    nombre: 'Codeína',
    precio: 12.99,
    categoria: 'Analgesicos',
    descripcion:
        'Opioide usado para el alivio del dolor moderado y como antitusivo.',
    imagenPath: 'assets/images/codeina.png',
  ),
  Medicamento(
    nombre: 'Oxycodona',
    precio: 18.50,
    categoria: 'Analgesicos',
    descripcion:
        'Analgésico opioide de acción prolongada para el tratamiento del dolor severo.',
    imagenPath: 'assets/images/oxycodona.png',
  ),
  Medicamento(
    nombre: 'Fentanyl',
    precio: 22.75,
    categoria: 'Analgesicos',
    descripcion:
        'Opioide sintético para el tratamiento del dolor severo y crónico.',
    imagenPath: 'assets/images/fentanyl.png',
  ),

  // Antibioticos
  Medicamento(
    nombre: 'Amoxicilina',
    precio: 8.50,
    categoria: 'Antibioticos',
    descripcion:
        'Antibiótico de amplio espectro utilizado para tratar infecciones bacterianas.',
    imagenPath: 'assets/images/amoxicilina.png',
  ),
  Medicamento(
    nombre: 'Azitromicina',
    precio: 9.99,
    categoria: 'Antibioticos',
    descripcion:
        'Antibiótico macrólido usado para tratar diversas infecciones bacterianas.',
    imagenPath: 'assets/images/azitromicina.png',
  ),
  Medicamento(
    nombre: 'Ciprofloxacina',
    precio: 7.25,
    categoria: 'Antibioticos',
    descripcion:
        'Antibiótico fluoroquinolona efectivo contra una amplia variedad de infecciones bacterianas.',
    imagenPath: 'assets/images/ciprofloxacina.png',
  ),
  Medicamento(
    nombre: 'Clindamicina',
    precio: 10.50,
    categoria: 'Antibioticos',
    descripcion:
        'Antibiótico que se utiliza para tratar infecciones graves por bacterias anaerobias.',
    imagenPath: 'assets/images/clindamicina.png',
  ),
  Medicamento(
    nombre: 'Doxiciclina',
    precio: 6.75,
    categoria: 'Antibioticos',
    descripcion:
        'Antibiótico de la familia de las tetraciclinas utilizado para tratar una variedad de infecciones.',
    imagenPath: 'assets/images/doxiciclina.png',
  ),
  Medicamento(
    nombre: 'Metronidazol',
    precio: 5.99,
    categoria: 'Antibioticos',
    descripcion:
        'Antibiótico y antiprotozoario utilizado para tratar infecciones anaeróbicas y protozoarias.',
    imagenPath: 'assets/images/metronidazol.png',
  ),
  Medicamento(
    nombre: 'Penicilina',
    precio: 12.99,
    categoria: 'Antibioticos',
    descripcion:
        'Antibiótico de amplio espectro efectivo contra muchas infecciones bacterianas.',
    imagenPath: 'assets/images/penicilina.png',
  ),
  Medicamento(
    nombre: 'Levofloxacina',
    precio: 14.50,
    categoria: 'Antibioticos',
    descripcion:
        'Antibiótico fluoroquinolona utilizado para tratar infecciones bacterianas.',
    imagenPath: 'assets/images/levofloxacina.png',
  ),
  Medicamento(
    nombre: 'Cefalexina',
    precio: 9.25,
    categoria: 'Antibioticos',
    descripcion:
        'Antibiótico cefalosporina utilizado para tratar infecciones bacterianas.',
    imagenPath: 'assets/images/cafalexina.png',
  ),
  Medicamento(
    nombre: 'Eritromicina',
    precio: 8.75,
    categoria: 'Antibioticos',
    descripcion:
        'Antibiótico macrólido utilizado para tratar infecciones bacterianas respiratorias y cutáneas.',
    imagenPath: 'assets/images/eritromicina.png',
  ),

  // Antiinflamatorios
  Medicamento(
    nombre: 'Prednisona',
    precio: 7.99,
    categoria: 'Antiinflamatorios',
    descripcion:
        'Glucocorticoide utilizado para reducir la inflamación y suprimir el sistema inmunológico.',
    imagenPath: 'assets/images/prednisona.png',
  ),
  Medicamento(
    nombre: 'Dexametasona',
    precio: 6.50,
    categoria: 'Antiinflamatorios',
    descripcion:
        'Corticoesteroide utilizado para tratar inflamaciones severas y enfermedades autoinmunes.',
    imagenPath: 'assets/images/dexametasona.png',
  ),
  Medicamento(
    nombre: 'Indometacina',
    precio: 8.25,
    categoria: 'Antiinflamatorios',
    descripcion:
        'Antiinflamatorio no esteroideo utilizado para aliviar la inflamación y el dolor.',
    imagenPath: 'assets/images/indometacina.png',
  ),
  Medicamento(
    nombre: 'Celecoxib',
    precio: 9.99,
    categoria: 'Antiinflamatorios',
    descripcion:
        'Antiinflamatorio no esteroideo utilizado para aliviar el dolor y la inflamación en enfermedades crónicas.',
    imagenPath: 'assets/images/celecoxib.png',
  ),
  Medicamento(
    nombre: 'Nimesulida',
    precio: 5.75,
    categoria: 'Antiinflamatorios',
    descripcion:
        'Antiinflamatorio utilizado para el tratamiento del dolor agudo y la inflamación.',
    imagenPath: 'assets/images/nimesulida.png',
  ),
  Medicamento(
    nombre: 'Colchicina',
    precio: 11.50,
    categoria: 'Antiinflamatorios',
    descripcion:
        'Medicamento utilizado para prevenir y tratar los ataques agudos de gota.',
    imagenPath: 'assets/images/colchicina.png',
  ),
  Medicamento(
    nombre: 'Ketoprofeno',
    precio: 10.99,
    categoria: 'Antiinflamatorios',
    descripcion:
        'Antiinflamatorio no esteroideo utilizado para el tratamiento del dolor y la inflamación.',
    imagenPath: 'assets/images/ketoprofeno.png',
  ),
  Medicamento(
    nombre: 'Diclofenac',
    precio: 7.75,
    categoria: 'Antiinflamatorios',
    descripcion:
        'Antiinflamatorio no esteroideo utilizado para el alivio del dolor y la inflamación.',
    imagenPath: 'assets/images/diclofenac.png',
  ),
  Medicamento(
    nombre: 'Meloxicam',
    precio: 8.50,
    categoria: 'Antiinflamatorios',
    descripcion:
        'Antiinflamatorio utilizado para tratar la inflamación y el dolor en enfermedades crónicas.',
    imagenPath: 'assets/images/meloxicam.png',
  ),
  Medicamento(
    nombre: 'Piroxicam',
    precio: 6.25,
    categoria: 'Antiinflamatorios',
    descripcion:
        'Antiinflamatorio no esteroideo utilizado para aliviar la inflamación y el dolor crónico.',
    imagenPath: 'assets/images/piroxicam.png',
  ),

  // Antivirales
  Medicamento(
    nombre: 'Oseltamivir',
    precio: 12.99,
    categoria: 'Antivirales',
    descripcion:
        'Antiviral utilizado para el tratamiento y la prevención de la gripe.',
    imagenPath: 'assets/images/oseltamivir.png',
  ),
  Medicamento(
    nombre: 'Aciclovir',
    precio: 9.50,
    categoria: 'Antivirales',
    descripcion:
        'Antiviral utilizado para tratar infecciones por herpes y varicela.',
    imagenPath: 'assets/images/aciclovir.png',
  ),
  Medicamento(
    nombre: 'Zanamivir',
    precio: 15.25,
    categoria: 'Antivirales',
    descripcion:
        'Antiviral utilizado para el tratamiento y la prevención de la gripe.',
    imagenPath: 'assets/images/zanamivir.png',
  ),
  Medicamento(
    nombre: 'Famciclovir',
    precio: 11.75,
    categoria: 'Antivirales',
    descripcion:
        'Antiviral utilizado para tratar infecciones por herpes zoster y genital.',
    imagenPath: 'assets/images/famciclovir.png',
  ),
  Medicamento(
    nombre: 'Ganciclovir',
    precio: 18.99,
    categoria: 'Antivirales',
    descripcion:
        'Antiviral utilizado principalmente para tratar infecciones por citomegalovirus.',
    imagenPath: 'assets/images/ganciclovir.png',
  ),
  Medicamento(
    nombre: 'Valaciclovir',
    precio: 14.50,
    categoria: 'Antivirales',
    descripcion:
        'Antiviral utilizado para el tratamiento de infecciones por herpes.',
    imagenPath: 'assets/images/valaciclovir.png',
  ),
  Medicamento(
    nombre: 'Ritonavir',
    precio: 22.25,
    categoria: 'Antivirales',
    descripcion:
        'Antiviral utilizado como parte del tratamiento de la infección por VIH.',
    imagenPath: 'assets/images/ritonavir.png',
  ),
  Medicamento(
    nombre: 'Ribavirin',
    precio: 19.99,
    categoria: 'Antivirales',
    descripcion:
        'Antiviral utilizado en el tratamiento de la hepatitis C y otras infecciones virales.',
    imagenPath: 'assets/images/ribavirin.png',
  ),
  Medicamento(
    nombre: 'Lamivudine',
    precio: 16.75,
    categoria: 'Antivirales',
    descripcion:
        'Antiviral utilizado para tratar la infección por VIH y la hepatitis B.',
    imagenPath: 'assets/images/lamivudine.png',
  ),
  Medicamento(
    nombre: 'Tenofovir',
    precio: 21.50,
    categoria: 'Antivirales',
    descripcion:
        'Antiviral utilizado en el tratamiento de la infección por VIH y la hepatitis B.',
    imagenPath: 'assets/images/tenofovir.png',
  ),

  // Antifúngicos
  Medicamento(
    nombre: 'Clotrimazol',
    precio: 5.99,
    categoria: 'Antifúngicos',
    descripcion:
        'Antifúngico utilizado para tratar infecciones por hongos en la piel y las mucosas.',
    imagenPath: 'assets/images/clotrimazol.png',
  ),
  Medicamento(
    nombre: 'Fluconazol',
    precio: 8.50,
    categoria: 'Antifúngicos',
    descripcion:
        'Antifúngico utilizado para tratar infecciones por hongos en diferentes partes del cuerpo.',
    imagenPath: 'assets/images/fluconazol.png',
  ),
  Medicamento(
    nombre: 'Ketoconazol',
    precio: 6.75,
    categoria: 'Antifúngicos',
    descripcion:
        'Antifúngico utilizado para tratar infecciones por hongos en la piel y el cuero cabelludo.',
    imagenPath: 'assets/images/ketoconazol.png',
  ),
  Medicamento(
    nombre: 'Miconazol',
    precio: 7.25,
    categoria: 'Antifúngicos',
    descripcion:
        'Antifúngico utilizado para tratar infecciones por hongos en la piel.',
    imagenPath: 'assets/images/miconazol.png',
  ),
  Medicamento(
    nombre: 'Terbinafina',
    precio: 9.99,
    categoria: 'Antifúngicos',
    descripcion:
        'Antifúngico utilizado para tratar infecciones por hongos en la piel y las uñas.',
    imagenPath: 'assets/images/terbinafina.png',
  ),
  Medicamento(
    nombre: 'Itraconazol',
    precio: 11.50,
    categoria: 'Antifúngicos',
    descripcion:
        'Antifúngico utilizado para tratar infecciones por hongos en diferentes partes del cuerpo.',
    imagenPath: 'assets/images/itraconazol.png',
  ),
  Medicamento(
    nombre: 'Nistatina',
    precio: 10.99,
    categoria: 'Antifúngicos',
    descripcion:
        'Antifúngico utilizado para tratar infecciones por hongos en la piel y las mucosas.',
    imagenPath: 'assets/images/nistatina.png',
  ),
  Medicamento(
    nombre: 'Anfotericina B',
    precio: 13.75,
    categoria: 'Antifúngicos',
    descripcion:
        'Antifúngico potente utilizado para tratar infecciones graves por hongos.',
    imagenPath: 'assets/images/anfotericina_b.png',
  ),
  Medicamento(
    nombre: 'Griseofulvina',
    precio: 12.50,
    categoria: 'Antifúngicos',
    descripcion:
        'Antifúngico utilizado para tratar infecciones por hongos en la piel y las uñas.',
    imagenPath: 'assets/images/griseofulvina.png',
  ),
  Medicamento(
    nombre: 'Ciclopirox',
    precio: 14.99,
    categoria: 'Antifúngicos',
    descripcion:
        'Antifúngico utilizado para tratar infecciones por hongos en la piel y las uñas.',
    imagenPath: 'assets/images/ciclopirox.png',
  ),

  // Antidepresivos
  Medicamento(
    nombre: 'Fluoxetina',
    precio: 7.99,
    categoria: 'Antidepresivos',
    descripcion:
        'Antidepresivo utilizado para tratar la depresión, el trastorno obsesivo-compulsivo y la bulimia.',
    imagenPath: 'assets/images/fluoxetina.png',
  ),
  Medicamento(
    nombre: 'Sertralina',
    precio: 9.50,
    categoria: 'Antidepresivos',
    descripcion:
        'Antidepresivo utilizado para tratar la depresión y los trastornos de ansiedad.',
    imagenPath: 'assets/images/sertralina.png',
  ),
  Medicamento(
    nombre: 'Escitalopram',
    precio: 10.25,
    categoria: 'Antidepresivos',
    descripcion:
        'Antidepresivo utilizado para tratar la depresión y los trastornos de ansiedad.',
    imagenPath: 'assets/images/escitalopram.png',
  ),
  Medicamento(
    nombre: 'Paroxetina',
    precio: 8.99,
    categoria: 'Antidepresivos',
    descripcion:
        'Antidepresivo utilizado para tratar la depresión y los trastornos de ansiedad.',
    imagenPath: 'assets/images/peroxetina.png',
  ),
  Medicamento(
    nombre: 'Citalopram',
    precio: 7.75,
    categoria: 'Antidepresivos',
    descripcion:
        'Antidepresivo utilizado para tratar la depresión y los trastornos de ansiedad.',
    imagenPath: 'assets/images/citalopram.png',
  ),
  Medicamento(
    nombre: 'Venlafaxina',
    precio: 12.50,
    categoria: 'Antidepresivos',
    descripcion:
        'Antidepresivo utilizado para tratar la depresión y los trastornos de ansiedad.',
    imagenPath: 'assets/images/venlafaxina.png',
  ),
  Medicamento(
    nombre: 'Duloxetina',
    precio: 13.99,
    categoria: 'Antidepresivos',
    descripcion:
        'Antidepresivo utilizado para tratar la depresión, la ansiedad y el dolor neuropático.',
    imagenPath: 'assets/images/duloxetina.png',
  ),
  Medicamento(
    nombre: 'Mirtazapina',
    precio: 11.25,
    categoria: 'Antidepresivos',
    descripcion:
        'Antidepresivo utilizado para tratar la depresión mayor y los trastornos de ansiedad.',
    imagenPath: 'assets/images/mirtazapina.png',
  ),
  Medicamento(
    nombre: 'Amitriptilina',
    precio: 8.75,
    categoria: 'Antidepresivos',
    descripcion:
        'Antidepresivo tricíclico utilizado para tratar la depresión y el dolor neuropático.',
    imagenPath: 'assets/images/amitriptilina.png',
  ),
  Medicamento(
    nombre: 'Bupropion',
    precio: 10.50,
    categoria: 'Antidepresivos',
    descripcion:
        'Antidepresivo utilizado para tratar la depresión y como ayuda para dejar de fumar.',
    imagenPath: 'assets/images/bupropion.png',
  ),

  // Fotoprotectores
  Medicamento(
    nombre: 'Protector Solar FPS 30',
    precio: 15.99,
    categoria: 'Fotoprotectores',
    descripcion:
        'Protector solar con FPS 30 para protección diaria contra los rayos UV.',
    imagenPath: 'assets/images/protector_solar_fps30.png',
  ),
  Medicamento(
    nombre: 'Protector Solar FPS 50',
    precio: 18.50,
    categoria: 'Fotoprotectores',
    descripcion:
        'Protector solar con FPS 50 para alta protección contra los rayos UV.',
    imagenPath: 'assets/images/protector_solar_fps50.png',
  ),
  Medicamento(
    nombre: 'Protector Solar FPS 70',
    precio: 20.75,
    categoria: 'Fotoprotectores',
    descripcion:
        'Protector solar con FPS 70 para máxima protección contra los rayos UV.',
    imagenPath: 'assets/images/protector_solar_fps70.png',
  ),
  Medicamento(
    nombre: 'Protector Solar FPS 100',
    precio: 22.99,
    categoria: 'Fotoprotectores',
    descripcion:
        'Protector solar con FPS 100 para máxima protección contra los rayos UV.',
    imagenPath: 'assets/images/protector_solar_fps100.png',
  ),
  Medicamento(
    nombre: 'Protector Solar Facial FPS 50',
    precio: 19.99,
    categoria: 'Fotoprotectores',
    descripcion:
        'Protector solar facial con FPS 50 para protección diaria contra los rayos UV.',
    imagenPath: 'assets/images/protector_solar_facial_fps50.png',
  ),
  Medicamento(
    nombre: 'Protector Solar Infantil FPS 50',
    precio: 16.50,
    categoria: 'Fotoprotectores',
    descripcion:
        'Protector solar infantil con FPS 50 para protección de la piel sensible de los niños.',
    imagenPath: 'assets/images/protector_solar_infantil_fps50.png',
  ),
  Medicamento(
    nombre: 'Protector Solar en Spray FPS 30',
    precio: 17.75,
    categoria: 'Fotoprotectores',
    descripcion:
        'Protector solar en spray con FPS 30 para fácil aplicación y protección contra los rayos UV.',
    imagenPath: 'assets/images/protector_solar_spray_fps30.png',
  ),
  Medicamento(
    nombre: 'Protector Solar en Gel FPS 50',
    precio: 21.25,
    categoria: 'Fotoprotectores',
    descripcion:
        'Protector solar en gel con FPS 50 para una aplicación ligera y protección contra los rayos UV.',
    imagenPath: 'assets/images/protector_solar_gel_fps50.png',
  ),
  Medicamento(
    nombre: 'Protector Solar para Deportistas FPS 70',
    precio: 24.99,
    categoria: 'Fotoprotectores',
    descripcion:
        'Protector solar para deportistas con FPS 70 para protección en actividades al aire libre.',
    imagenPath: 'assets/images/protector_solar_deportistas_fps70.png',
  ),
  Medicamento(
    nombre: 'Protector Solar para Bebés FPS 50',
    precio: 18.75,
    categoria: 'Fotoprotectores',
    descripcion:
        'Protector solar para bebés con FPS 50 para protección de la piel delicada de los bebés.',
    imagenPath: 'assets/images/protector_solar_bebes_fps50.png',
  ),

  // Anticonvulsivos
  Medicamento(
    nombre: 'Ácido Valproico',
    precio: 10.99,
    categoria: 'Anticonvulsivos',
    descripcion:
        'Anticonvulsivo utilizado para tratar diferentes tipos de convulsiones y trastornos del estado de ánimo.',
    imagenPath: 'assets/images/acido_valproico.png',
  ),
  Medicamento(
    nombre: 'Carbamazepina',
    precio: 9.50,
    categoria: 'Anticonvulsivos',
    descripcion:
        'Anticonvulsivo utilizado para tratar las convulsiones y el trastorno bipolar.',
    imagenPath: 'assets/images/carbamazepina.png',
  ),
  Medicamento(
    nombre: 'Lamotrigina',
    precio: 8.25,
    categoria: 'Anticonvulsivos',
    descripcion:
        'Anticonvulsivo utilizado para tratar la epilepsia y los trastornos bipolares.',
    imagenPath: 'assets/images/lamotrigina.png',
  ),
  Medicamento(
    nombre: 'Topiramato',
    precio: 12.50,
    categoria: 'Anticonvulsivos',
    descripcion:
        'Anticonvulsivo utilizado para tratar la epilepsia y prevenir las migrañas.',
    imagenPath: 'assets/images/topiramato.png',
  ),
  Medicamento(
    nombre: 'Fenitoína',
    precio: 7.75,
    categoria: 'Anticonvulsivos',
    descripcion:
        'Anticonvulsivo utilizado para tratar las convulsiones en diferentes tipos de epilepsia.',
    imagenPath: 'assets/images/fenitoina.png',
  ),
  Medicamento(
    nombre: 'Gabapentina',
    precio: 11.99,
    categoria: 'Anticonvulsivos',
    descripcion:
        'Anticonvulsivo utilizado para tratar la epilepsia y el dolor neuropático.',
    imagenPath: 'assets/images/gabapentina.png',
  ),
  Medicamento(
    nombre: 'Pregabalina',
    precio: 14.50,
    categoria: 'Anticonvulsivos',
    descripcion:
        'Anticonvulsivo utilizado para tratar la epilepsia y el dolor neuropático.',
    imagenPath: 'assets/images/pregabalina.png',
  ),
  Medicamento(
    nombre: 'Fenobarbital',
    precio: 10.25,
    categoria: 'Anticonvulsivos',
    descripcion:
        'Anticonvulsivo utilizado para tratar las convulsiones y la epilepsia.',
    imagenPath: 'assets/images/fenobarbital.png',
  ),
  Medicamento(
    nombre: 'Clonazepam',
    precio: 9.75,
    categoria: 'Anticonvulsivos',
    descripcion:
        'Anticonvulsivo utilizado para tratar las convulsiones y los trastornos de ansiedad.',
    imagenPath: 'assets/images/clonazepam.png',
  ),
  Medicamento(
    nombre: 'Etosuximida',
    precio: 8.99,
    categoria: 'Anticonvulsivos',
    descripcion:
        'Anticonvulsivo utilizado para tratar las convulsiones de ausencia en la epilepsia.',
    imagenPath: 'assets/images/etosuximida.png',
  ),

  // Diuréticos
  Medicamento(
    nombre: 'Furosemida',
    precio: 7.99,
    categoria: 'Diuréticos',
    descripcion:
        'Diurético utilizado para tratar la retención de líquidos y la hipertensión.',
    imagenPath: 'assets/images/furosemida.png',
  ),
  Medicamento(
    nombre: 'Hidroclorotiazida',
    precio: 8.50,
    categoria: 'Diuréticos',
    descripcion:
        'Diurético utilizado para tratar la hipertensión y la retención de líquidos.',
    imagenPath: 'assets/images/hidroclorotiazida.png',
  ),
  Medicamento(
    nombre: 'Espironolactona',
    precio: 9.25,
    categoria: 'Diuréticos',
    descripcion:
        'Diurético ahorrador de potasio utilizado para tratar la hipertensión y la insuficiencia cardíaca.',
    imagenPath: 'assets/images/espironolactona.png',
  ),
  Medicamento(
    nombre: 'Bumetanida',
    precio: 6.99,
    categoria: 'Diuréticos',
    descripcion:
        'Diurético utilizado para tratar la retención de líquidos y la hipertensión.',
    imagenPath: 'assets/images/bumetanida.png',
  ),
  Medicamento(
    nombre: 'Metolazona',
    precio: 7.75,
    categoria: 'Diuréticos',
    descripcion:
        'Diurético utilizado para tratar la retención de líquidos y la hipertensión.',
    imagenPath: 'assets/images/metolazona.png',
  ),
  Medicamento(
    nombre: 'Clortalidona',
    precio: 8.25,
    categoria: 'Diuréticos',
    descripcion:
        'Diurético utilizado para tratar la hipertensión y la retención de líquidos.',
    imagenPath: 'assets/images/clortalidona.png',
  ),
  Medicamento(
    nombre: 'Torasemida',
    precio: 9.99,
    categoria: 'Diuréticos',
    descripcion:
        'Diurético utilizado para tratar la retención de líquidos y la hipertensión.',
    imagenPath: 'assets/images/torasemida.png',
  ),
  Medicamento(
    nombre: 'Acetazolamida',
    precio: 10.50,
    categoria: 'Diuréticos',
    descripcion:
        'Diurético utilizado para tratar la retención de líquidos y la presión ocular elevada.',
    imagenPath: 'assets/images/acetazolamida.png',
  ),
  Medicamento(
    nombre: 'Amilorida',
    precio: 11.25,
    categoria: 'Diuréticos',
    descripcion:
        'Diurético ahorrador de potasio utilizado para tratar la hipertensión y la insuficiencia cardíaca.',
    imagenPath: 'assets/images/amilorida.png',
  ),
  Medicamento(
    nombre: 'Indapamida',
    precio: 12.75,
    categoria: 'Diuréticos',
    descripcion:
        'Diurético utilizado para tratar la hipertensión y la retención de líquidos.',
    imagenPath: 'assets/images/indapamida.png',
  ),
  // Antihipertensivos
  Medicamento(
    nombre: 'Losartán',
    precio: 9.99,
    categoria: 'Antihipertensivos',
    descripcion:
        'Antihipertensivo utilizado para tratar la hipertensión y la insuficiencia cardíaca.',
    imagenPath: 'assets/images/losartan.png',
  ),
  Medicamento(
    nombre: 'Enalapril',
    precio: 8.50,
    categoria: 'Antihipertensivos',
    descripcion:
        'Antihipertensivo que ayuda a reducir la presión arterial y mejorar la función cardíaca.',
    imagenPath: 'assets/images/enalapril.png',
  ),
  Medicamento(
    nombre: 'Amlodipino',
    precio: 10.25,
    categoria: 'Antihipertensivos',
    descripcion:
        'Antihipertensivo que relaja los vasos sanguíneos y mejora el flujo sanguíneo.',
    imagenPath: 'assets/images/amlodipino.png',
  ),
  Medicamento(
    nombre: 'Hidroclorotiazida',
    precio: 8.99,
    categoria: 'Antihipertensivos',
    descripcion:
        'Diurético que ayuda a reducir la presión arterial eliminando el exceso de líquidos.',
    imagenPath: 'assets/images/hidroclorotiazida.png',
  ),
  Medicamento(
    nombre: 'Valsartán',
    precio: 12.50,
    categoria: 'Antihipertensivos',
    descripcion:
        'Antihipertensivo que bloquea los receptores de angiotensina para reducir la presión arterial.',
    imagenPath: 'assets/images/valsartan.png',
  ),
  Medicamento(
    nombre: 'Candesartán',
    precio: 11.75,
    categoria: 'Antihipertensivos',
    descripcion:
        'Antihipertensivo que bloquea los efectos de la angiotensina II en el cuerpo.',
    imagenPath: 'assets/images/candesartan.png',
  ),
  Medicamento(
    nombre: 'Propranolol',
    precio: 9.25,
    categoria: 'Antihipertensivos',
    descripcion:
        'Betabloqueador que reduce la presión arterial y la frecuencia cardíaca.',
    imagenPath: 'assets/images/propranolol.png',
  ),
  Medicamento(
    nombre: 'Metoprolol',
    precio: 8.99,
    categoria: 'Antihipertensivos',
    descripcion:
        'Betabloqueador que se utiliza para tratar la hipertensión y otros problemas cardíacos.',
    imagenPath: 'assets/images/metoprolol.png',
  ),
  Medicamento(
    nombre: 'Atenolol',
    precio: 7.75,
    categoria: 'Antihipertensivos',
    descripcion:
        'Betabloqueador que reduce la presión arterial y el riesgo de problemas cardíacos.',
    imagenPath: 'assets/images/atenolol.png',
  ),
  Medicamento(
    nombre: 'Ramipril',
    precio: 10.50,
    categoria: 'Antihipertensivos',
    descripcion:
        'Antihipertensivo que ayuda a reducir la presión arterial y protege el corazón.',
    imagenPath: 'assets/images/ramipril.png',
  ),
];
