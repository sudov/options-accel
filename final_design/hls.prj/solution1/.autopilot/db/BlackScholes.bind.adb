<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<!DOCTYPE boost_serialization>
<boost_serialization signature="serialization::archive" version="10">
<syndb class_id="0" tracking_level="0" version="0">
	<userIPLatency>-1</userIPLatency>
	<userIPName></userIPName>
	<cdfg class_id="1" tracking_level="1" version="0" object_id="_0">
		<name>BlackScholes</name>
		<ret_bitwidth>0</ret_bitwidth>
		<ports class_id="2" tracking_level="0" version="0">
			<count>0</count>
			<item_version>0</item_version>
		</ports>
		<nodes class_id="3" tracking_level="0" version="0">
			<count>2</count>
			<item_version>0</item_version>
			<item class_id="4" tracking_level="1" version="0" object_id="_1">
				<Value class_id="5" tracking_level="0" version="0">
					<Obj class_id="6" tracking_level="0" version="0">
						<type>0</type>
						<id>8</id>
						<name></name>
						<fileName>BlackScholes.cpp</fileName>
						<fileDirectory>/home/student/cw444/Fall2014/ece5775/options-accel/final_design</fileDirectory>
						<lineNumber>12</lineNumber>
						<contextFuncName>BlackScholes</contextFuncName>
						<inlineStackInfo class_id="7" tracking_level="0" version="0">
							<count>1</count>
							<item_version>0</item_version>
							<item class_id="8" tracking_level="0" version="0">
								<first>/home/student/cw444/Fall2014/ece5775/options-accel/final_design</first>
								<second class_id="9" tracking_level="0" version="0">
									<count>1</count>
									<item_version>0</item_version>
									<item class_id="10" tracking_level="0" version="0">
										<first class_id="11" tracking_level="0" version="0">
											<first>BlackScholes.cpp</first>
											<second>BlackScholes</second>
										</first>
										<second>12</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>7</count>
					<item_version>0</item_version>
					<item>12</item>
					<item>13</item>
					<item>14</item>
					<item>15</item>
					<item>16</item>
					<item>17</item>
					<item>18</item>
				</oprand_edges>
				<opcode>call</opcode>
			</item>
			<item class_id_reference="4" object_id="_2">
				<Value>
					<Obj>
						<type>0</type>
						<id>9</id>
						<name></name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>0</count>
					<item_version>0</item_version>
				</oprand_edges>
				<opcode>ret</opcode>
			</item>
		</nodes>
		<consts class_id="13" tracking_level="0" version="0">
			<count>1</count>
			<item_version>0</item_version>
			<item class_id="14" tracking_level="1" version="0" object_id="_3">
				<Value>
					<Obj>
						<type>2</type>
						<id>11</id>
						<name>rand_uint32</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:rand_uint32&gt;</content>
			</item>
		</consts>
		<blocks class_id="15" tracking_level="0" version="0">
			<count>1</count>
			<item_version>0</item_version>
			<item class_id="16" tracking_level="1" version="0" object_id="_4">
				<Obj>
					<type>3</type>
					<id>10</id>
					<name>BlackScholes</name>
					<fileName></fileName>
					<fileDirectory></fileDirectory>
					<lineNumber>0</lineNumber>
					<contextFuncName></contextFuncName>
					<inlineStackInfo>
						<count>0</count>
						<item_version>0</item_version>
					</inlineStackInfo>
					<originalName></originalName>
					<rtlName></rtlName>
					<coreName></coreName>
				</Obj>
				<node_objs>
					<count>2</count>
					<item_version>0</item_version>
					<item>8</item>
					<item>9</item>
				</node_objs>
			</item>
		</blocks>
		<edges class_id="17" tracking_level="0" version="0">
			<count>7</count>
			<item_version>0</item_version>
			<item class_id="18" tracking_level="1" version="0" object_id="_5">
				<id>12</id>
				<edge_type>1</edge_type>
				<source_obj>11</source_obj>
				<sink_obj>8</sink_obj>
			</item>
			<item class_id_reference="18" object_id="_6">
				<id>13</id>
				<edge_type>1</edge_type>
				<source_obj>1</source_obj>
				<sink_obj>8</sink_obj>
			</item>
			<item class_id_reference="18" object_id="_7">
				<id>14</id>
				<edge_type>1</edge_type>
				<source_obj>2</source_obj>
				<sink_obj>8</sink_obj>
			</item>
			<item class_id_reference="18" object_id="_8">
				<id>15</id>
				<edge_type>1</edge_type>
				<source_obj>3</source_obj>
				<sink_obj>8</sink_obj>
			</item>
			<item class_id_reference="18" object_id="_9">
				<id>16</id>
				<edge_type>1</edge_type>
				<source_obj>4</source_obj>
				<sink_obj>8</sink_obj>
			</item>
			<item class_id_reference="18" object_id="_10">
				<id>17</id>
				<edge_type>1</edge_type>
				<source_obj>5</source_obj>
				<sink_obj>8</sink_obj>
			</item>
			<item class_id_reference="18" object_id="_11">
				<id>18</id>
				<edge_type>1</edge_type>
				<source_obj>6</source_obj>
				<sink_obj>8</sink_obj>
			</item>
		</edges>
	</cdfg>
	<cdfg_regions class_id="19" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="20" tracking_level="1" version="0" object_id="_12">
			<mId>1</mId>
			<mTag>BlackScholes</mTag>
			<mType>0</mType>
			<sub_regions>
				<count>0</count>
				<item_version>0</item_version>
			</sub_regions>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>10</item>
			</basic_blocks>
			<mII>3</mII>
			<mDepth>3</mDepth>
			<mMinTripCount>-1</mMinTripCount>
			<mMaxTripCount>-1</mMaxTripCount>
			<mMinLatency>2</mMinLatency>
			<mMaxLatency>-1</mMaxLatency>
			<mIsDfPipe>0</mIsDfPipe>
			<mDfPipe class_id="-1"></mDfPipe>
		</item>
	</cdfg_regions>
	<fsm class_id="22" tracking_level="1" version="0" object_id="_13">
		<states class_id="23" tracking_level="0" version="0">
			<count>3</count>
			<item_version>0</item_version>
			<item class_id="24" tracking_level="1" version="0" object_id="_14">
				<id>1</id>
				<operations class_id="25" tracking_level="0" version="0">
					<count>1</count>
					<item_version>0</item_version>
					<item class_id="26" tracking_level="1" version="0" object_id="_15">
						<id>8</id>
						<stage>3</stage>
						<latency>3</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="24" object_id="_16">
				<id>2</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="26" object_id="_17">
						<id>8</id>
						<stage>2</stage>
						<latency>3</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="24" object_id="_18">
				<id>3</id>
				<operations>
					<count>3</count>
					<item_version>0</item_version>
					<item class_id_reference="26" object_id="_19">
						<id>7</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="26" object_id="_20">
						<id>8</id>
						<stage>1</stage>
						<latency>3</latency>
					</item>
					<item class_id_reference="26" object_id="_21">
						<id>9</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
				</operations>
			</item>
		</states>
		<transitions class_id="27" tracking_level="0" version="0">
			<count>2</count>
			<item_version>0</item_version>
			<item class_id="28" tracking_level="1" version="0" object_id="_22">
				<inState>1</inState>
				<outState>2</outState>
				<condition class_id="29" tracking_level="0" version="0">
					<id>2</id>
					<sop class_id="30" tracking_level="0" version="0">
						<count>1</count>
						<item_version>0</item_version>
						<item class_id="31" tracking_level="0" version="0">
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="28" object_id="_23">
				<inState>2</inState>
				<outState>3</outState>
				<condition>
					<id>3</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
		</transitions>
	</fsm>
	<res class_id="32" tracking_level="1" version="0" object_id="_24">
		<dp_component_resource class_id="33" tracking_level="0" version="0">
			<count>0</count>
			<item_version>0</item_version>
		</dp_component_resource>
		<dp_expression_resource>
			<count>0</count>
			<item_version>0</item_version>
		</dp_expression_resource>
		<dp_fifo_resource>
			<count>0</count>
			<item_version>0</item_version>
		</dp_fifo_resource>
		<dp_memory_resource>
			<count>0</count>
			<item_version>0</item_version>
		</dp_memory_resource>
		<dp_multiplexer_resource>
			<count>0</count>
			<item_version>0</item_version>
		</dp_multiplexer_resource>
		<dp_register_resource>
			<count>0</count>
			<item_version>0</item_version>
		</dp_register_resource>
		<dp_component_map class_id="34" tracking_level="0" version="0">
			<count>0</count>
			<item_version>0</item_version>
		</dp_component_map>
		<dp_expression_map>
			<count>0</count>
			<item_version>0</item_version>
		</dp_expression_map>
		<dp_fifo_map>
			<count>0</count>
			<item_version>0</item_version>
		</dp_fifo_map>
		<dp_memory_map>
			<count>0</count>
			<item_version>0</item_version>
		</dp_memory_map>
	</res>
	<node_label_latency class_id="35" tracking_level="0" version="0">
		<count>2</count>
		<item_version>0</item_version>
		<item class_id="36" tracking_level="0" version="0">
			<first>8</first>
			<second class_id="37" tracking_level="0" version="0">
				<first>0</first>
				<second>2</second>
			</second>
		</item>
		<item>
			<first>9</first>
			<second>
				<first>2</first>
				<second>0</second>
			</second>
		</item>
	</node_label_latency>
	<bblk_ent_exit class_id="38" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="39" tracking_level="0" version="0">
			<first>10</first>
			<second class_id="40" tracking_level="0" version="0">
				<first>0</first>
				<second>2</second>
			</second>
		</item>
	</bblk_ent_exit>
	<regions class_id="41" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="42" tracking_level="1" version="0" object_id="_25">
			<region_name>BlackScholes</region_name>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>10</item>
			</basic_blocks>
			<nodes>
				<count>0</count>
				<item_version>0</item_version>
			</nodes>
			<anchor_node>-1</anchor_node>
			<region_type>8</region_type>
			<interval>3</interval>
			<pipe_depth>3</pipe_depth>
		</item>
	</regions>
	<dp_fu_nodes class_id="43" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="44" tracking_level="0" version="0">
			<first>25</first>
			<second>
				<count>3</count>
				<item_version>0</item_version>
				<item>8</item>
				<item>8</item>
				<item>8</item>
			</second>
		</item>
	</dp_fu_nodes>
	<dp_fu_nodes_expression class_id="46" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_expression>
	<dp_fu_nodes_module>
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="47" tracking_level="0" version="0">
			<first>grp_rand_uint32_fu_25</first>
			<second>
				<count>3</count>
				<item_version>0</item_version>
				<item>8</item>
				<item>8</item>
				<item>8</item>
			</second>
		</item>
	</dp_fu_nodes_module>
	<dp_fu_nodes_io>
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_io>
	<return_ports>
		<count>0</count>
		<item_version>0</item_version>
	</return_ports>
	<dp_mem_port_nodes class_id="48" tracking_level="0" version="0">
		<count>3</count>
		<item_version>0</item_version>
		<item class_id="49" tracking_level="0" version="0">
			<first class_id="50" tracking_level="0" version="0">
				<first>mt_kk</first>
				<second>100</second>
			</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>8</item>
			</second>
		</item>
		<item>
			<first>
				<first>mt_kkp1</first>
				<second>100</second>
			</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>8</item>
			</second>
		</item>
		<item>
			<first>
				<first>mt_kkpm</first>
				<second>100</second>
			</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>8</item>
			</second>
		</item>
	</dp_mem_port_nodes>
	<dp_reg_nodes>
		<count>0</count>
		<item_version>0</item_version>
	</dp_reg_nodes>
	<dp_regname_nodes>
		<count>0</count>
		<item_version>0</item_version>
	</dp_regname_nodes>
	<dp_reg_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_reg_phi>
	<dp_regname_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_regname_phi>
	<dp_port_io_nodes class_id="51" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_port_io_nodes>
	<port2core class_id="52" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</port2core>
	<node2core>
		<count>0</count>
		<item_version>0</item_version>
	</node2core>
</syndb>
</boost_serialization>

