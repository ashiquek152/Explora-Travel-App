import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class ConfirmBookingController extends GetxController {
  late Razorpay _razorpay;
  final guestCount = 0.obs;
  final subtotalAMT = 0.obs;
  final totalAMT = 0.obs;
  final roomCount = 0.obs;

  @override
  void onInit() {
    super.onInit();
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    _razorpay.clear();
  }

  void increment() {
    guestCount.value++;
    if (guestCount.value % 3 == 1) {
      roomCount.value++;
    }
    totalAMT.value = (roomCount.value) * 800;
  }

  void decrement() {
    if (guestCount.value > 0) {
      if (guestCount.value % 3 == 1) {
        roomCount.value--;
      }
      guestCount.value--;
      totalAMT.value = (roomCount.value) * 800;
    }
  }

  void openCheckout() async {
    var options = {
      'key': 'rzp_test_1mVUHWzryPRoJW',
      'amount': (totalAMT.value) * 100,
      'name': 'Explora',
      'description': 'Hotel Taj',
      'retry': {'enabled': true, 'max_count': 1},
      'send_sms_hash': true,
      'theme':{'color':'#4682B4'},
      'prefill': {'contact': '7907301593', 'email': 'test@razorpay.com'},
      'external': {
        'wallets': ['paytm']
      }
    };

    try {
      _razorpay.open(options);
    } catch (e) {
      debugPrint('Error: e');
    }
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    log('Success Response: $response');
    Get.snackbar("Payment successfull", response.paymentId.toString());
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    log('Error Response: $response');
    Get.snackbar("Payment successfull", response.code.toString());
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    log('External SDK Response: $response');
    Get.snackbar("Payment successfull", response.walletName.toString());
  }
}
