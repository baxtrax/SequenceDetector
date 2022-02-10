/* A sequence detector FSM that will detect the sequence of
 * 1001. This is just one way of doing so, but it very simple
 * and effective.
 *
 * Author: Bradley Gathers
 * Date: 2/9/2022
*/
module SequenceDetector(clk, rst, a, out);

	// I/O and Parameters
	input clk, rst, a;
	output reg out;

	localparam [2:0] s0 = 3'b000,
						  s1 = 3'b001,
						  s2 = 3'b010,
						  s3 = 3'b011,
						  s4 = 3'b100;
						  
	reg [2:0] curState = s0;


	// Main update loop
	always @(posedge clk) begin
		$display("%t: Input: %b", $time, a);
		$display("%t: Before State: %b", $time, curState);
		
		if (rst) curState = s0;
		else begin
			// State Transitions
			case (curState)
				s0: begin
					if (a) curState = s1;
					else curState = s0;
				end
				
				s1: begin
					if (a) curState = s1;
					else curState = s2;
				end
				
				s2: begin
					if (a) curState = s1;
					else curState = s3;
				end
				
				s3: begin
					if (a) curState = s4;
					else curState = s0;
				end
				
				s4: begin
					if (a) curState = s1;
					else curState = s0;
				end
				default curState = s0;
			endcase
		end
		
		$display("%t: After State: %b", $time, curState);	
		
		//State actions
		case(curState)
			s0: out = 0;
			s1: out = 0;
			s2: out = 0;
			s3: out = 0;
			s4: out = 1;
			default: out = 0;
		endcase
		
		$display("%t: Output: %b", $time, out);	
	end
endmodule
	