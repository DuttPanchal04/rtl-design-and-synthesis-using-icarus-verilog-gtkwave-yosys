/* Generated by Yosys 0.53+3 (git sha1 6378ba10e, g++ 13.3.0-6ubuntu2~24.04 -fPIC -O3) */

(* top =  1  *)
(* src = "bin_count_4.v:1.1-17.10" *)
module bin_count_4(clk, reset, count);
  wire _00_;
  wire _01_;
  (* force_downto = 32'd1 *)
  (* src = "bin_count_4.v:14.10-14.19|/usr/local/bin/../share/yosys/techmap.v:270.23-270.24" *)
  wire [3:0] _02_;
  (* force_downto = 32'd1 *)
  (* src = "bin_count_4.v:14.10-14.19|/usr/local/bin/../share/yosys/techmap.v:270.26-270.27" *)
  wire [3:0] _03_;
  (* src = "bin_count_4.v:3.12-3.15" *)
  input clk;
  wire clk;
  (* src = "bin_count_4.v:5.18-5.23" *)
  output [3:0] count;
  reg [3:0] count;
  (* src = "bin_count_4.v:4.12-4.17" *)
  input reset;
  wire reset;
  assign _02_[0] = ~count[0];
  assign _03_[1] = count[1] ^ count[0];
  assign _00_ = ~(count[1] & count[0]);
  assign _03_[2] = ~(_00_ ^ count[2]);
  assign _01_ = count[2] & ~(_00_);
  assign _03_[3] = _01_ ^ count[3];
  (* src = "bin_count_4.v:9.1-16.4" *)
  always @(posedge clk, posedge reset)
    if (reset) count[0] <= 1'h0;
    else count[0] <= _02_[0];
  (* src = "bin_count_4.v:9.1-16.4" *)
  always @(posedge clk, posedge reset)
    if (reset) count[1] <= 1'h0;
    else count[1] <= _03_[1];
  (* src = "bin_count_4.v:9.1-16.4" *)
  always @(posedge clk, posedge reset)
    if (reset) count[2] <= 1'h0;
    else count[2] <= _03_[2];
  (* src = "bin_count_4.v:9.1-16.4" *)
  always @(posedge clk, posedge reset)
    if (reset) count[3] <= 1'h0;
    else count[3] <= _03_[3];
  assign _02_[3:1] = count[3:1];
  assign _03_[0] = _02_[0];
endmodule
