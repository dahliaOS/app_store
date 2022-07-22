import 'dart:io';
import 'dart:convert';
import 'package:system_info2/system_info2.dart';
import 'package:http/http.dart';

parse() {
  var product;
  var vendor;

  if (Platform.isLinux) {
    Process.runSync('lshw', ['-C', 'display'])
        .stdout
        .toString()
        .split('\n')
        .forEach((line) {
      if (line.contains('product:')) {
        product = line.split('product:')[1].trim().toString();
      }
      if (line.contains('vendor:')) {
        vendor = line.split('vendor:')[1].trim().toString();
      }
    });
  }
  return {'product': product, 'vendor': vendor};
}

class gpu {
  static String get product => parse()['product'];
  static String get vendor => parse()['vendor'];
}

getID() async {
  // open a json file

  // get OSid
  var os;
  var osid;
  var arch;
  if (Platform.isLinux) os = 'Linux';
  var core = SysInfo.cores;

  if (core.first.architecture == 'X86_64')
    arch = '64-bit';
  else if (core.first.architecture == 'AARCH64') arch = 'aarch64';
  String osMenuText = '$os $arch';

  // product is GF108 [GeForce GT 730] for testing
  var product = gpu.product;
  var productid;
  var productIsMobile;
  var product_type;

  if (product.substring(product.length - 1, product.length) == 'M' ||
      product.substring(product.length - 1, product.length) == 'm')
    productIsMobile = true;
  else
    productIsMobile = false;

  if (product.contains('GeForce')) if (product.contains('GeForce 5'))
    product_type = 'GeForce 5 FX Series';
  else if (product.contains('GeForce 6'))
    product_type = 'GeForce 6 Series';
  else if (product.contains('GeForce 7'))
    product_type = 'GeForce 7 Series';
  else if (product.contains('GeForce Go 7'))
    product_type = 'GeForce Go 7 Series (Notebooks)';
  else if (product.contains('GeForce 8')) if (productIsMobile)
    product_type = 'GeForce 8M Series (Notebooks)';
  else
    product_type = 'GeForce 8 Series';
  else if (product.contains('GeForce 9')) if (productIsMobile)
    product_type = 'GeForce 9M Series (Notebooks)';
  else
    product_type = 'GeForce 9 Series';
  else if (product.contains('GeForce GT 1') ||
      product.contains('GeForce GTX 1')) if (productIsMobile)
    product_type = 'GeForce 100M Series (Notebooks)';
  else
    product_type = 'GeForce 100 Series';
  else if (product.contains('GeForce GT 2') ||
      product.contains('GeForce GTX 2')) if (productIsMobile)
    product_type = 'GeForce 200M Series (Notebooks)';
  else
    product_type = 'GeForce 200 Series';
  else if (product.contains('GeForce GT 3') ||
      product.contains('GeForce GTX 3')) if (productIsMobile)
    product_type = 'GeForce 300M Series (Notebooks)';
  else
    product_type = 'GeForce 300 Series';
  else if (product.contains('GeForce GT 4') ||
      product.contains('GeForce GTX 4')) if (productIsMobile)
    product_type = 'GeForce 400M Series (Notebooks)';
  else
    product_type = 'GeForce 400 Series';
  else if (product.contains('GeForce GT 5') ||
      product.contains('GeForce GTX 5')) if (productIsMobile)
    product_type = 'GeForce 500M Series (Notebooks)';
  else
    product_type = 'GeForce 500 Series';
  else if (product.contains('GeForce GT 6') ||
      product.contains('GeForce GTX 6')) if (productIsMobile)
    product_type = 'GeForce 600M Series (Notebooks)';
  else
    product_type = 'GeForce 600 Series';
  else if (product.contains('GeForce GT 7') ||
      product.contains('GeForce GTX 7')) if (productIsMobile)
    product_type = 'GeForce 700M Series (Notebooks)';
  else
    product_type = 'GeForce 700 Series';
  else if (product.contains('GeForce GT 8') ||
      product.contains('GeForce GTX 8')) if (productIsMobile)
    product_type = 'GeForce 800M Series (Notebooks)';
  else
    product_type = 'GeForce 800 Series';
  else if (product.contains('GeForce GT 9') ||
      product.contains('GeForce GTX 9')) if (productIsMobile)
    product_type = 'GeForce 900M Series (Notebooks)';
  else
    product_type = 'GeForce 900 Series';
  else if (product.contains('GeForce GT 10') ||
      product.contains('GeForce GTX 10')) if (productIsMobile)
    product_type = 'GeForce 10 Series (Notebooks)';
  else
    product_type = 'GeForce 1000 Series';
  else if (product.contains('GeForce GTX 16')) if (productIsMobile)
    product_type = 'GeForce GTX 16 Series (Notebooks)';
  else
    product_type = 'GeForce 16 Series';
  else if (product.contains('GeForce RTX 20')) if (productIsMobile)
    product_type = 'GeForce RTX 20 Series (Notebooks)';
  else
    product_type = 'GeForce RTX 20 Series';
  else if (product.contains('GeForce RTX 30')) if (productIsMobile)
    product_type = 'GeForce RTX 30 Series (Notebooks)';
  else
    product_type = 'GeForce RTX 30 Series';
  else if (product.contains('GeForce MX1'))
    product_type = 'GeForce MX100 Series (Notebook)';
  else if (product.contains('GeForce MX2'))
    product_type = 'GeForce MX200 Series (Notebooks)';
  else if (product.contains('GeForce MX3'))
    product_type = 'GeForce MX300 Series (Notebooks)';
  else if (product.contains('GeForce MX4'))
    product_type = 'GeForce MX400 Series (Notebooks)';
  else if (product.contains('GeForce MX5'))
    product_type = 'GeForce MX500 Series (Notebooks)';
  else if (product.contains('TITAN'))
    product_type = 'NVIDIA TITAN Series';
  else if (product.contains('NVS')) if (productIsMobile)
    product_type = 'NVS Series (Notebooks)';
  else
    product_type = 'NVS Series';
  else
    product_type = 'unknown';

  var address = Uri.parse(
      'https://gfwsl.geforce.com/nvidia_web_services/controller.php?com.nvidia.services.Drivers.getMenuArrays/');
  var menuArraysJsonFile = await get(address);
  var menuArrays = jsonDecode(menuArraysJsonFile.body.toString());

  // if menutext is in the json file, return the id of the menu item

  for (var i = 0; i < menuArrays.length; i++) {
    if (menuArrays[i] != null) {
      for (var j = 0; j < menuArrays.length - 1; j++) {
        if (menuArrays[i][j]['menutext'] == osMenuText) {
          osid = menuArrays[i][j]['id'];
        }
      }
    }
  }

  for (var i = 0; i < menuArrays.length; i++) {
    if (menuArrays[i] != null) {
      for (var j = 0; j < menuArrays[i].length - 1; j++) {
        if (menuArrays[i][j]['menutext'] == product_type) {
          productid = menuArrays[i][j]['id'];
        }
      }
    }
  }

  return [osid, productid];
}

List getDriver() {

    var address = Uri.parse(
      'https://gfwsl.geforce.com/services_toolkit/services/com/nvidia/services/AjaxDriverService.php?func=DriverManualLookup&psid=${getID()[1]}&osID=${getID()[0]}&languageCode=1033&beta=0&isWHQL=1&dltype=-1&sort1=0&numberOfResults=10');
  var ajaxDriverServiceJsonFile = await get(address);
  var ajaxDriverService = jsonDecode(ajaxDriverServiceJsonFile.body.toString());
  String downloadURL =
      ajaxDriverService['IDS'][0]['downloadInfo']['DownloadURL'];
  String version =
      ajaxDriverService['IDS'][0]['downloadInfo']['DisplayVersion'];

  return [downloadURL, version];
}

void main() {
  print('download link: ${getDriver()[0]}');
  print('version: ${getDriver()[1]}');
}
