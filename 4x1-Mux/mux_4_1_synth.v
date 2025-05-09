/* Generated by Yosys 0.53+3 (git sha1 6378ba10e, g++ 13.3.0-6ubuntu2~24.04 -fPIC -O3) */

(* top =  1  *)
(* src = "mux_4_1.v:1.1-24.10" *)
module mux_4_1(i0, i1, i2, i3, sel, y);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  (* src = "mux_4_1.v:3.12-3.14" *)
  input i0;
  wire i0;
  (* src = "mux_4_1.v:4.12-4.14" *)
  input i1;
  wire i1;
  (* src = "mux_4_1.v:5.12-5.14" *)
  input i2;
  wire i2;
  (* src = "mux_4_1.v:6.12-6.14" *)
  input i3;
  wire i3;
  (* src = "mux_4_1.v:7.18-7.21" *)
  input [1:0] sel;
  wire [1:0] sel;
  (* src = "mux_4_1.v:8.12-8.13" *)
  output y;
  wire y;
  assign _07_ = ~(sel[0] | sel[1]);
  assign _08_ = ~(sel[0] & sel[1]);
  assign _00_ = i3 & ~(_08_);
  assign _01_ = sel[0] | ~(sel[1]);
  assign _02_ = i2 & ~(_01_);
  assign _03_ = _02_ | _00_;
  assign _04_ = sel[1] | ~(sel[0]);
  assign _05_ = i1 & ~(_04_);
  assign _06_ = _05_ | _03_;
  assign y = _07_ ? i0 : _06_;
endmodule
