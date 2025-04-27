import 'package:flutter/material.dart';

class PaymentCardWithSlider extends StatefulWidget {
  final double initialAmount;
  final String currency;
  final double minAmount;
  final double maxAmount;
  final VoidCallback? onCheckboxTap;
  final Function(bool)? onSwitchChanged;
  final bool isChecked;
  final bool isSwitchOn;

  const PaymentCardWithSlider({
    super.key,
    required this.initialAmount,
    required this.currency,
    this.minAmount = 0,
    this.maxAmount = 1000,
    this.onCheckboxTap,
    this.onSwitchChanged,
    this.isChecked = false,
    this.isSwitchOn = false,
  });

  @override
  State<PaymentCardWithSlider> createState() => _PaymentCardWithSliderState();
}

class _PaymentCardWithSliderState extends State<PaymentCardWithSlider> {
  late double currentAmount;
  bool isChecked = false;
  bool isSwitchOn = false;

  @override
  void initState() {
    super.initState();
    currentAmount = widget.initialAmount;
    isChecked = widget.isChecked;
    isSwitchOn = widget.isSwitchOn;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Currency icon
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  shape: BoxShape.circle,
                ),
                child: const Center(
                  child: Icon(
                    Icons.attach_money,
                    size: 14,
                    color: Color.fromARGB(255, 135, 4, 116),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Amount
                  Text(
                    currentAmount.toStringAsFixed(0),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  // Currency
                  Text(
                    widget.currency,
                    style: TextStyle(color: Colors.grey[600], fontSize: 14),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),

          // Slider
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              activeTrackColor: const Color.fromARGB(255, 128, 1, 90),
              inactiveTrackColor: Colors.grey.shade200,
              thumbColor: Colors.white,
              overlayColor: Colors.blue.withOpacity(0.3),
              thumbShape: const RoundSliderThumbShape(
                enabledThumbRadius: 12.0,
                elevation: 4.0,
              ),
              overlayShape: const RoundSliderOverlayShape(overlayRadius: 20.0),
            ),
            child: Slider(
              min: widget.minAmount,
              max: widget.maxAmount,
              value: currentAmount,
              onChanged: (value) {
                setState(() {
                  currentAmount = value;
                });
              },
            ),
          ),

          // Min and Max labels
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${widget.minAmount.toInt()} ${widget.currency}',
                  style: TextStyle(color: Colors.grey[600], fontSize: 12),
                ),
                Text(
                  '${widget.maxAmount.toInt()} ${widget.currency}',
                  style: TextStyle(color: Colors.grey[600], fontSize: 12),
                ),
              ],
            ),
          ),

          const SizedBox(height: 16),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    isChecked = !isChecked;
                  });
                  if (widget.onCheckboxTap != null) {
                    widget.onCheckboxTap!();
                  }
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color:
                        isChecked ? Colors.blue.shade50 : Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        isChecked ? Icons.check_circle : Icons.circle_outlined,
                        color: isChecked ? Colors.blue : Colors.grey,
                        size: 16,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        'Checkbox Label',
                        style: TextStyle(
                          color: isChecked ? Colors.blue : Colors.grey[600],
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Switch button
              Row(
                children: [
                  Text(
                    'Switch',
                    style: TextStyle(
                      color: isSwitchOn ? Colors.blue : Colors.grey[600],
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(width: 4),
                  Switch(
                    value: isSwitchOn,
                    onChanged: (value) {
                      setState(() {
                        isSwitchOn = value;
                      });
                      if (widget.onSwitchChanged != null) {
                        widget.onSwitchChanged!(value);
                      }
                    },
                    activeColor: const Color.fromARGB(255, 131, 2, 77),
                    activeTrackColor: Colors.blue.shade100,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
