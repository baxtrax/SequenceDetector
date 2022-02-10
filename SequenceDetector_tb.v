/* A test bench to test the functionality of
 * the sequence detector.
 *
 * Author: Bradley Gathers
 * Date: 2/9/2022
*/
module SequenceDetector_tb();

	// I/O and Parameters
	reg a, clk, rst;
	wire out;
	
	// Initial Setup
	initial begin
		clk = 0;
		rst = 0;
		a = 0;
	end
	
	// Clock Loop
	always begin
		#5 clk = ~clk;
	end
	
	SequenceDetector DUT (clk, rst, a, out);
	
	// Test Loop
	initial begin
		@(posedge clk) rst = 1;
		@(posedge clk) rst = 0;
		
		//These can be any combination, these are just for a simple check.
		$display("Starting simulation! :)");	
		@(posedge clk) a = 0;
		@(posedge clk) a = 0;
		@(posedge clk) a = 1;
		@(posedge clk) a = 0;
		@(posedge clk) a = 0;
		@(posedge clk) a = 1;
		@(posedge clk) a = 0;
		@(posedge clk) a = 1;
		@(posedge clk) a = 0;		
		
		$display("Done simulation! :)");
		#100 $stop;
	end
endmodule

