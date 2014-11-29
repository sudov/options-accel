<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<!DOCTYPE boost_serialization>
<boost_serialization signature="serialization::archive" version="10">
<syndb class_id="0" tracking_level="0" version="0">
	<userIPLatency>-1</userIPLatency>
	<userIPName></userIPName>
	<cdfg class_id="1" tracking_level="1" version="0" object_id="_0">
		<name>black_scholes2</name>
		<ret_bitwidth>64</ret_bitwidth>
		<ports class_id="2" tracking_level="0" version="0">
			<count>6</count>
			<item_version>0</item_version>
			<item class_id="3" tracking_level="1" version="0" object_id="_1">
				<Value class_id="4" tracking_level="0" version="0">
					<Obj class_id="5" tracking_level="0" version="0">
						<type>1</type>
						<id>1</id>
						<name>S</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo class_id="6" tracking_level="0" version="0">
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>S</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs class_id="7" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_2">
				<Value>
					<Obj>
						<type>1</type>
						<id>2</id>
						<name>E</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>E</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_3">
				<Value>
					<Obj>
						<type>1</type>
						<id>3</id>
						<name>r</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>r</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_4">
				<Value>
					<Obj>
						<type>1</type>
						<id>4</id>
						<name>sigma</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>sigma</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_5">
				<Value>
					<Obj>
						<type>1</type>
						<id>5</id>
						<name>T</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>T</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_6">
				<Value>
					<Obj>
						<type>1</type>
						<id>6</id>
						<name>gaussian_random_number</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>gaussian_random_number</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
		</ports>
		<nodes class_id="8" tracking_level="0" version="0">
			<count>36</count>
			<item_version>0</item_version>
			<item class_id="9" tracking_level="1" version="0" object_id="_7">
				<Value>
					<Obj>
						<type>0</type>
						<id>7</id>
						<name>gaussian_random_number_read</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>gaussian_random_number</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>62</item>
					<item>63</item>
				</oprand_edges>
				<opcode>read</opcode>
			</item>
			<item class_id_reference="9" object_id="_8">
				<Value>
					<Obj>
						<type>0</type>
						<id>8</id>
						<name>T_read</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>T</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>64</item>
					<item>65</item>
				</oprand_edges>
				<opcode>read</opcode>
			</item>
			<item class_id_reference="9" object_id="_9">
				<Value>
					<Obj>
						<type>0</type>
						<id>9</id>
						<name>sigma_read</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>sigma</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>66</item>
					<item>67</item>
				</oprand_edges>
				<opcode>read</opcode>
			</item>
			<item class_id_reference="9" object_id="_10">
				<Value>
					<Obj>
						<type>0</type>
						<id>10</id>
						<name>r_read</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>r</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>68</item>
					<item>69</item>
				</oprand_edges>
				<opcode>read</opcode>
			</item>
			<item class_id_reference="9" object_id="_11">
				<Value>
					<Obj>
						<type>0</type>
						<id>11</id>
						<name>E_read</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>E</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>70</item>
					<item>71</item>
				</oprand_edges>
				<opcode>read</opcode>
			</item>
			<item class_id_reference="9" object_id="_12">
				<Value>
					<Obj>
						<type>0</type>
						<id>12</id>
						<name>S_read</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>S</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>72</item>
					<item>73</item>
				</oprand_edges>
				<opcode>read</opcode>
			</item>
			<item class_id_reference="9" object_id="_13">
				<Value>
					<Obj>
						<type>0</type>
						<id>13</id>
						<name>p_channel42</name>
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
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>75</item>
				</oprand_edges>
				<opcode>alloca</opcode>
			</item>
			<item class_id_reference="9" object_id="_14">
				<Value>
					<Obj>
						<type>0</type>
						<id>14</id>
						<name>p_channel41</name>
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
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>76</item>
				</oprand_edges>
				<opcode>alloca</opcode>
			</item>
			<item class_id_reference="9" object_id="_15">
				<Value>
					<Obj>
						<type>0</type>
						<id>15</id>
						<name>p_channel40</name>
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
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>77</item>
				</oprand_edges>
				<opcode>alloca</opcode>
			</item>
			<item class_id_reference="9" object_id="_16">
				<Value>
					<Obj>
						<type>0</type>
						<id>16</id>
						<name>p_channel39</name>
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
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>78</item>
				</oprand_edges>
				<opcode>alloca</opcode>
			</item>
			<item class_id_reference="9" object_id="_17">
				<Value>
					<Obj>
						<type>0</type>
						<id>17</id>
						<name>T_channel31_channel</name>
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
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>79</item>
				</oprand_edges>
				<opcode>alloca</opcode>
			</item>
			<item class_id_reference="9" object_id="_18">
				<Value>
					<Obj>
						<type>0</type>
						<id>18</id>
						<name>p_channel38</name>
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
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>80</item>
				</oprand_edges>
				<opcode>alloca</opcode>
			</item>
			<item class_id_reference="9" object_id="_19">
				<Value>
					<Obj>
						<type>0</type>
						<id>19</id>
						<name>p_channel37</name>
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
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>81</item>
				</oprand_edges>
				<opcode>alloca</opcode>
			</item>
			<item class_id_reference="9" object_id="_20">
				<Value>
					<Obj>
						<type>0</type>
						<id>20</id>
						<name>T_channel_channel</name>
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
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>82</item>
				</oprand_edges>
				<opcode>alloca</opcode>
			</item>
			<item class_id_reference="9" object_id="_21">
				<Value>
					<Obj>
						<type>0</type>
						<id>21</id>
						<name>p_channel36</name>
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
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>83</item>
				</oprand_edges>
				<opcode>alloca</opcode>
			</item>
			<item class_id_reference="9" object_id="_22">
				<Value>
					<Obj>
						<type>0</type>
						<id>22</id>
						<name>r_channel_channel</name>
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
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>84</item>
				</oprand_edges>
				<opcode>alloca</opcode>
			</item>
			<item class_id_reference="9" object_id="_23">
				<Value>
					<Obj>
						<type>0</type>
						<id>23</id>
						<name>tmp_1_channel</name>
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
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>85</item>
				</oprand_edges>
				<opcode>alloca</opcode>
			</item>
			<item class_id_reference="9" object_id="_24">
				<Value>
					<Obj>
						<type>0</type>
						<id>24</id>
						<name>sigma_channel_channel</name>
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
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>86</item>
				</oprand_edges>
				<opcode>alloca</opcode>
			</item>
			<item class_id_reference="9" object_id="_25">
				<Value>
					<Obj>
						<type>0</type>
						<id>25</id>
						<name>p_channel35</name>
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
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>87</item>
				</oprand_edges>
				<opcode>alloca</opcode>
			</item>
			<item class_id_reference="9" object_id="_26">
				<Value>
					<Obj>
						<type>0</type>
						<id>26</id>
						<name>p_channel32</name>
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
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>88</item>
				</oprand_edges>
				<opcode>alloca</opcode>
			</item>
			<item class_id_reference="9" object_id="_27">
				<Value>
					<Obj>
						<type>0</type>
						<id>27</id>
						<name>p_channel</name>
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
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>89</item>
				</oprand_edges>
				<opcode>alloca</opcode>
			</item>
			<item class_id_reference="9" object_id="_28">
				<Value>
					<Obj>
						<type>0</type>
						<id>37</id>
						<name></name>
						<fileName>black_scholes2.c</fileName>
						<fileDirectory>/home/student/cw444/Fall2014/ece5775/options-accel</fileDirectory>
						<lineNumber>62</lineNumber>
						<contextFuncName>black_scholes2</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id="11" tracking_level="0" version="0">
								<first>/home/student/cw444/Fall2014/ece5775/options-accel</first>
								<second class_id="12" tracking_level="0" version="0">
									<count>1</count>
									<item_version>0</item_version>
									<item class_id="13" tracking_level="0" version="0">
										<first class_id="14" tracking_level="0" version="0">
											<first>black_scholes2.c</first>
											<second>black_scholes2</second>
										</first>
										<second>62</second>
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
					<count>5</count>
					<item_version>0</item_version>
					<item>91</item>
					<item>92</item>
					<item>93</item>
					<item>94</item>
					<item>95</item>
				</oprand_edges>
				<opcode>call</opcode>
			</item>
			<item class_id_reference="9" object_id="_29">
				<Value>
					<Obj>
						<type>0</type>
						<id>38</id>
						<name></name>
						<fileName>black_scholes2.c</fileName>
						<fileDirectory>/home/student/cw444/Fall2014/ece5775/options-accel</fileDirectory>
						<lineNumber>63</lineNumber>
						<contextFuncName>black_scholes2</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/student/cw444/Fall2014/ece5775/options-accel</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>black_scholes2.c</first>
											<second>black_scholes2</second>
										</first>
										<second>63</second>
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
					<count>5</count>
					<item_version>0</item_version>
					<item>97</item>
					<item>98</item>
					<item>99</item>
					<item>286</item>
					<item>288</item>
				</oprand_edges>
				<opcode>call</opcode>
			</item>
			<item class_id_reference="9" object_id="_30">
				<Value>
					<Obj>
						<type>0</type>
						<id>39</id>
						<name>tmp_2_loc_channel</name>
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
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>6</count>
					<item_version>0</item_version>
					<item>101</item>
					<item>102</item>
					<item>103</item>
					<item>104</item>
					<item>285</item>
					<item>289</item>
				</oprand_edges>
				<opcode>call</opcode>
			</item>
			<item class_id_reference="9" object_id="_31">
				<Value>
					<Obj>
						<type>0</type>
						<id>40</id>
						<name></name>
						<fileName>black_scholes2.c</fileName>
						<fileDirectory>/home/student/cw444/Fall2014/ece5775/options-accel</fileDirectory>
						<lineNumber>66</lineNumber>
						<contextFuncName>black_scholes2</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/student/cw444/Fall2014/ece5775/options-accel</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>black_scholes2.c</first>
											<second>black_scholes2</second>
										</first>
										<second>66</second>
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
					<count>5</count>
					<item_version>0</item_version>
					<item>106</item>
					<item>107</item>
					<item>108</item>
					<item>109</item>
					<item>110</item>
				</oprand_edges>
				<opcode>call</opcode>
			</item>
			<item class_id_reference="9" object_id="_32">
				<Value>
					<Obj>
						<type>0</type>
						<id>43</id>
						<name></name>
						<fileName>black_scholes2.c</fileName>
						<fileDirectory>/home/student/cw444/Fall2014/ece5775/options-accel</fileDirectory>
						<lineNumber>67</lineNumber>
						<contextFuncName>black_scholes2</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/student/cw444/Fall2014/ece5775/options-accel</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>black_scholes2.c</first>
											<second>black_scholes2</second>
										</first>
										<second>67</second>
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
					<count>5</count>
					<item_version>0</item_version>
					<item>112</item>
					<item>113</item>
					<item>114</item>
					<item>115</item>
					<item>287</item>
				</oprand_edges>
				<opcode>call</opcode>
			</item>
			<item class_id_reference="9" object_id="_33">
				<Value>
					<Obj>
						<type>0</type>
						<id>46</id>
						<name></name>
						<fileName>black_scholes2.c</fileName>
						<fileDirectory>/home/student/cw444/Fall2014/ece5775/options-accel</fileDirectory>
						<lineNumber>68</lineNumber>
						<contextFuncName>black_scholes2</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/student/cw444/Fall2014/ece5775/options-accel</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>black_scholes2.c</first>
											<second>black_scholes2</second>
										</first>
										<second>68</second>
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
					<count>5</count>
					<item_version>0</item_version>
					<item>117</item>
					<item>118</item>
					<item>119</item>
					<item>120</item>
					<item>283</item>
				</oprand_edges>
				<opcode>call</opcode>
			</item>
			<item class_id_reference="9" object_id="_34">
				<Value>
					<Obj>
						<type>0</type>
						<id>47</id>
						<name></name>
						<fileName>black_scholes2.c</fileName>
						<fileDirectory>/home/student/cw444/Fall2014/ece5775/options-accel</fileDirectory>
						<lineNumber>68</lineNumber>
						<contextFuncName>black_scholes2</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/student/cw444/Fall2014/ece5775/options-accel</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>black_scholes2.c</first>
											<second>black_scholes2</second>
										</first>
										<second>68</second>
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
					<item>122</item>
					<item>123</item>
					<item>124</item>
					<item>125</item>
					<item>126</item>
					<item>280</item>
					<item>282</item>
				</oprand_edges>
				<opcode>call</opcode>
			</item>
			<item class_id_reference="9" object_id="_35">
				<Value>
					<Obj>
						<type>0</type>
						<id>48</id>
						<name>tmp3_loc_channel</name>
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
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>4</count>
					<item_version>0</item_version>
					<item>128</item>
					<item>129</item>
					<item>130</item>
					<item>279</item>
				</oprand_edges>
				<opcode>call</opcode>
			</item>
			<item class_id_reference="9" object_id="_36">
				<Value>
					<Obj>
						<type>0</type>
						<id>49</id>
						<name></name>
						<fileName>black_scholes2.c</fileName>
						<fileDirectory>/home/student/cw444/Fall2014/ece5775/options-accel</fileDirectory>
						<lineNumber>70</lineNumber>
						<contextFuncName>black_scholes2</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/student/cw444/Fall2014/ece5775/options-accel</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>black_scholes2.c</first>
											<second>black_scholes2</second>
										</first>
										<second>70</second>
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
					<count>3</count>
					<item_version>0</item_version>
					<item>132</item>
					<item>133</item>
					<item>134</item>
				</oprand_edges>
				<opcode>call</opcode>
			</item>
			<item class_id_reference="9" object_id="_37">
				<Value>
					<Obj>
						<type>0</type>
						<id>50</id>
						<name></name>
						<fileName>black_scholes2.c</fileName>
						<fileDirectory>/home/student/cw444/Fall2014/ece5775/options-accel</fileDirectory>
						<lineNumber>71</lineNumber>
						<contextFuncName>black_scholes2</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/student/cw444/Fall2014/ece5775/options-accel</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>black_scholes2.c</first>
											<second>black_scholes2</second>
										</first>
										<second>71</second>
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
					<count>6</count>
					<item_version>0</item_version>
					<item>136</item>
					<item>137</item>
					<item>138</item>
					<item>139</item>
					<item>140</item>
					<item>278</item>
				</oprand_edges>
				<opcode>call</opcode>
			</item>
			<item class_id_reference="9" object_id="_38">
				<Value>
					<Obj>
						<type>0</type>
						<id>55</id>
						<name>call_ret</name>
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
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>6</count>
					<item_version>0</item_version>
					<item>142</item>
					<item>143</item>
					<item>144</item>
					<item>281</item>
					<item>284</item>
					<item>290</item>
				</oprand_edges>
				<opcode>call</opcode>
			</item>
			<item class_id_reference="9" object_id="_39">
				<Value>
					<Obj>
						<type>0</type>
						<id>56</id>
						<name></name>
						<fileName>black_scholes2.c</fileName>
						<fileDirectory>/home/student/cw444/Fall2014/ece5775/options-accel</fileDirectory>
						<lineNumber>74</lineNumber>
						<contextFuncName>black_scholes2</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/student/cw444/Fall2014/ece5775/options-accel</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>black_scholes2.c</first>
											<second>black_scholes2</second>
										</first>
										<second>74</second>
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
					<count>3</count>
					<item_version>0</item_version>
					<item>146</item>
					<item>147</item>
					<item>148</item>
				</oprand_edges>
				<opcode>call</opcode>
			</item>
			<item class_id_reference="9" object_id="_40">
				<Value>
					<Obj>
						<type>0</type>
						<id>57</id>
						<name>tmp4_1_loc_channel</name>
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
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>6</count>
					<item_version>0</item_version>
					<item>150</item>
					<item>151</item>
					<item>152</item>
					<item>153</item>
					<item>276</item>
					<item>277</item>
				</oprand_edges>
				<opcode>call</opcode>
			</item>
			<item class_id_reference="9" object_id="_41">
				<Value>
					<Obj>
						<type>0</type>
						<id>58</id>
						<name>tmp</name>
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
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>155</item>
					<item>156</item>
				</oprand_edges>
				<opcode>call</opcode>
			</item>
			<item class_id_reference="9" object_id="_42">
				<Value>
					<Obj>
						<type>0</type>
						<id>59</id>
						<name></name>
						<fileName>black_scholes2.c</fileName>
						<fileDirectory>/home/student/cw444/Fall2014/ece5775/options-accel</fileDirectory>
						<lineNumber>84</lineNumber>
						<contextFuncName>black_scholes2</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/student/cw444/Fall2014/ece5775/options-accel</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>black_scholes2.c</first>
											<second>black_scholes2</second>
										</first>
										<second>84</second>
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
					<count>1</count>
					<item_version>0</item_version>
					<item>157</item>
				</oprand_edges>
				<opcode>ret</opcode>
			</item>
		</nodes>
		<consts class_id="15" tracking_level="0" version="0">
			<count>15</count>
			<item_version>0</item_version>
			<item class_id="16" tracking_level="1" version="0" object_id="_43">
				<Value>
					<Obj>
						<type>2</type>
						<id>74</id>
						<name>empty</name>
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
					<bitwidth>64</bitwidth>
				</Value>
				<const_type>0</const_type>
				<content>1</content>
			</item>
			<item class_id_reference="16" object_id="_44">
				<Value>
					<Obj>
						<type>2</type>
						<id>90</id>
						<name>black_scholes2_mult2_11</name>
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
				<content>&lt;constant:black_scholes2_mult2_11&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_45">
				<Value>
					<Obj>
						<type>2</type>
						<id>96</id>
						<name>black_scholes2_div_1</name>
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
				<content>&lt;constant:black_scholes2_div_1&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_46">
				<Value>
					<Obj>
						<type>2</type>
						<id>100</id>
						<name>black_scholes2_black_scholes2_Block_crit_edge14_proc</name>
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
					<bitwidth>64</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:black_scholes2_black_scholes2_Block_._crit_edge14_proc&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_47">
				<Value>
					<Obj>
						<type>2</type>
						<id>105</id>
						<name>black_scholes2_mult2_12</name>
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
				<content>&lt;constant:black_scholes2_mult2_12&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_48">
				<Value>
					<Obj>
						<type>2</type>
						<id>111</id>
						<name>black_scholes2_mult2_11_1</name>
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
				<content>&lt;constant:black_scholes2_mult2_11.1&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_49">
				<Value>
					<Obj>
						<type>2</type>
						<id>116</id>
						<name>black_scholes2_sqrt1</name>
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
				<content>&lt;constant:black_scholes2_sqrt1&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_50">
				<Value>
					<Obj>
						<type>2</type>
						<id>121</id>
						<name>black_scholes2_mult2_11_2</name>
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
				<content>&lt;constant:black_scholes2_mult2_11.2&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_51">
				<Value>
					<Obj>
						<type>2</type>
						<id>127</id>
						<name>black_scholes2_black_scholes2_Block_crit_edge111_proc</name>
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
					<bitwidth>64</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:black_scholes2_black_scholes2_Block_._crit_edge111_proc&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_52">
				<Value>
					<Obj>
						<type>2</type>
						<id>131</id>
						<name>black_scholes2_expo11</name>
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
				<content>&lt;constant:black_scholes2_expo11&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_53">
				<Value>
					<Obj>
						<type>2</type>
						<id>135</id>
						<name>black_scholes2_mult2_11_3</name>
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
				<content>&lt;constant:black_scholes2_mult2_11.3&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_54">
				<Value>
					<Obj>
						<type>2</type>
						<id>141</id>
						<name>black_scholes2_black_scholes2_Block_crit_edge115_proc</name>
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
					<bitwidth>64</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:black_scholes2_black_scholes2_Block_._crit_edge115_proc&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_55">
				<Value>
					<Obj>
						<type>2</type>
						<id>145</id>
						<name>black_scholes2_expo12</name>
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
				<content>&lt;constant:black_scholes2_expo12&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_56">
				<Value>
					<Obj>
						<type>2</type>
						<id>149</id>
						<name>black_scholes2_black_scholes2_Block_crit_edge117_proc</name>
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
					<bitwidth>64</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:black_scholes2_black_scholes2_Block_._crit_edge117_proc&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_57">
				<Value>
					<Obj>
						<type>2</type>
						<id>154</id>
						<name>black_scholes2_black_scholes2_Block_crit_edge_proc</name>
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
					<bitwidth>64</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:black_scholes2_black_scholes2_Block_._crit_edge_proc&gt;</content>
			</item>
		</consts>
		<blocks class_id="17" tracking_level="0" version="0">
			<count>1</count>
			<item_version>0</item_version>
			<item class_id="18" tracking_level="1" version="0" object_id="_58">
				<Obj>
					<type>3</type>
					<id>60</id>
					<name>black_scholes2</name>
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
					<count>36</count>
					<item_version>0</item_version>
					<item>7</item>
					<item>8</item>
					<item>9</item>
					<item>10</item>
					<item>11</item>
					<item>12</item>
					<item>13</item>
					<item>14</item>
					<item>15</item>
					<item>16</item>
					<item>17</item>
					<item>18</item>
					<item>19</item>
					<item>20</item>
					<item>21</item>
					<item>22</item>
					<item>23</item>
					<item>24</item>
					<item>25</item>
					<item>26</item>
					<item>27</item>
					<item>37</item>
					<item>38</item>
					<item>39</item>
					<item>40</item>
					<item>43</item>
					<item>46</item>
					<item>47</item>
					<item>48</item>
					<item>49</item>
					<item>50</item>
					<item>55</item>
					<item>56</item>
					<item>57</item>
					<item>58</item>
					<item>59</item>
				</node_objs>
			</item>
		</blocks>
		<edges class_id="19" tracking_level="0" version="0">
			<count>90</count>
			<item_version>0</item_version>
			<item class_id="20" tracking_level="1" version="0" object_id="_59">
				<id>63</id>
				<edge_type>1</edge_type>
				<source_obj>6</source_obj>
				<sink_obj>7</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_60">
				<id>65</id>
				<edge_type>1</edge_type>
				<source_obj>5</source_obj>
				<sink_obj>8</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_61">
				<id>67</id>
				<edge_type>1</edge_type>
				<source_obj>4</source_obj>
				<sink_obj>9</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_62">
				<id>69</id>
				<edge_type>1</edge_type>
				<source_obj>3</source_obj>
				<sink_obj>10</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_63">
				<id>71</id>
				<edge_type>1</edge_type>
				<source_obj>2</source_obj>
				<sink_obj>11</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_64">
				<id>73</id>
				<edge_type>1</edge_type>
				<source_obj>1</source_obj>
				<sink_obj>12</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_65">
				<id>75</id>
				<edge_type>1</edge_type>
				<source_obj>74</source_obj>
				<sink_obj>13</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_66">
				<id>76</id>
				<edge_type>1</edge_type>
				<source_obj>74</source_obj>
				<sink_obj>14</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_67">
				<id>77</id>
				<edge_type>1</edge_type>
				<source_obj>74</source_obj>
				<sink_obj>15</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_68">
				<id>78</id>
				<edge_type>1</edge_type>
				<source_obj>74</source_obj>
				<sink_obj>16</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_69">
				<id>79</id>
				<edge_type>1</edge_type>
				<source_obj>74</source_obj>
				<sink_obj>17</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_70">
				<id>80</id>
				<edge_type>1</edge_type>
				<source_obj>74</source_obj>
				<sink_obj>18</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_71">
				<id>81</id>
				<edge_type>1</edge_type>
				<source_obj>74</source_obj>
				<sink_obj>19</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_72">
				<id>82</id>
				<edge_type>1</edge_type>
				<source_obj>74</source_obj>
				<sink_obj>20</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_73">
				<id>83</id>
				<edge_type>1</edge_type>
				<source_obj>74</source_obj>
				<sink_obj>21</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_74">
				<id>84</id>
				<edge_type>1</edge_type>
				<source_obj>74</source_obj>
				<sink_obj>22</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_75">
				<id>85</id>
				<edge_type>1</edge_type>
				<source_obj>74</source_obj>
				<sink_obj>23</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_76">
				<id>86</id>
				<edge_type>1</edge_type>
				<source_obj>74</source_obj>
				<sink_obj>24</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_77">
				<id>87</id>
				<edge_type>1</edge_type>
				<source_obj>74</source_obj>
				<sink_obj>25</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_78">
				<id>88</id>
				<edge_type>1</edge_type>
				<source_obj>74</source_obj>
				<sink_obj>26</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_79">
				<id>89</id>
				<edge_type>1</edge_type>
				<source_obj>74</source_obj>
				<sink_obj>27</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_80">
				<id>91</id>
				<edge_type>1</edge_type>
				<source_obj>90</source_obj>
				<sink_obj>37</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_81">
				<id>92</id>
				<edge_type>1</edge_type>
				<source_obj>25</source_obj>
				<sink_obj>37</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_82">
				<id>93</id>
				<edge_type>1</edge_type>
				<source_obj>9</source_obj>
				<sink_obj>37</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_83">
				<id>94</id>
				<edge_type>1</edge_type>
				<source_obj>9</source_obj>
				<sink_obj>37</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_84">
				<id>95</id>
				<edge_type>1</edge_type>
				<source_obj>24</source_obj>
				<sink_obj>37</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_85">
				<id>97</id>
				<edge_type>1</edge_type>
				<source_obj>96</source_obj>
				<sink_obj>38</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_86">
				<id>98</id>
				<edge_type>1</edge_type>
				<source_obj>23</source_obj>
				<sink_obj>38</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_87">
				<id>99</id>
				<edge_type>1</edge_type>
				<source_obj>25</source_obj>
				<sink_obj>38</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_88">
				<id>101</id>
				<edge_type>1</edge_type>
				<source_obj>100</source_obj>
				<sink_obj>39</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_89">
				<id>102</id>
				<edge_type>1</edge_type>
				<source_obj>10</source_obj>
				<sink_obj>39</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_90">
				<id>103</id>
				<edge_type>1</edge_type>
				<source_obj>23</source_obj>
				<sink_obj>39</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_91">
				<id>104</id>
				<edge_type>1</edge_type>
				<source_obj>22</source_obj>
				<sink_obj>39</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_92">
				<id>106</id>
				<edge_type>1</edge_type>
				<source_obj>105</source_obj>
				<sink_obj>40</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_93">
				<id>107</id>
				<edge_type>1</edge_type>
				<source_obj>21</source_obj>
				<sink_obj>40</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_94">
				<id>108</id>
				<edge_type>1</edge_type>
				<source_obj>39</source_obj>
				<sink_obj>40</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_95">
				<id>109</id>
				<edge_type>1</edge_type>
				<source_obj>8</source_obj>
				<sink_obj>40</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_96">
				<id>110</id>
				<edge_type>1</edge_type>
				<source_obj>20</source_obj>
				<sink_obj>40</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_97">
				<id>112</id>
				<edge_type>1</edge_type>
				<source_obj>111</source_obj>
				<sink_obj>43</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_98">
				<id>113</id>
				<edge_type>1</edge_type>
				<source_obj>19</source_obj>
				<sink_obj>43</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_99">
				<id>114</id>
				<edge_type>1</edge_type>
				<source_obj>24</source_obj>
				<sink_obj>43</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_100">
				<id>115</id>
				<edge_type>1</edge_type>
				<source_obj>7</source_obj>
				<sink_obj>43</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_101">
				<id>117</id>
				<edge_type>1</edge_type>
				<source_obj>116</source_obj>
				<sink_obj>46</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_102">
				<id>118</id>
				<edge_type>1</edge_type>
				<source_obj>18</source_obj>
				<sink_obj>46</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_103">
				<id>119</id>
				<edge_type>1</edge_type>
				<source_obj>20</source_obj>
				<sink_obj>46</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_104">
				<id>120</id>
				<edge_type>1</edge_type>
				<source_obj>17</source_obj>
				<sink_obj>46</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_105">
				<id>122</id>
				<edge_type>1</edge_type>
				<source_obj>121</source_obj>
				<sink_obj>47</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_106">
				<id>123</id>
				<edge_type>1</edge_type>
				<source_obj>16</source_obj>
				<sink_obj>47</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_107">
				<id>124</id>
				<edge_type>1</edge_type>
				<source_obj>19</source_obj>
				<sink_obj>47</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_108">
				<id>125</id>
				<edge_type>1</edge_type>
				<source_obj>18</source_obj>
				<sink_obj>47</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_109">
				<id>126</id>
				<edge_type>1</edge_type>
				<source_obj>27</source_obj>
				<sink_obj>47</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_110">
				<id>128</id>
				<edge_type>1</edge_type>
				<source_obj>127</source_obj>
				<sink_obj>48</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_111">
				<id>129</id>
				<edge_type>1</edge_type>
				<source_obj>21</source_obj>
				<sink_obj>48</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_112">
				<id>130</id>
				<edge_type>1</edge_type>
				<source_obj>16</source_obj>
				<sink_obj>48</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_113">
				<id>132</id>
				<edge_type>1</edge_type>
				<source_obj>131</source_obj>
				<sink_obj>49</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_114">
				<id>133</id>
				<edge_type>1</edge_type>
				<source_obj>15</source_obj>
				<sink_obj>49</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_115">
				<id>134</id>
				<edge_type>1</edge_type>
				<source_obj>48</source_obj>
				<sink_obj>49</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_116">
				<id>136</id>
				<edge_type>1</edge_type>
				<source_obj>135</source_obj>
				<sink_obj>50</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_117">
				<id>137</id>
				<edge_type>1</edge_type>
				<source_obj>14</source_obj>
				<sink_obj>50</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_118">
				<id>138</id>
				<edge_type>1</edge_type>
				<source_obj>15</source_obj>
				<sink_obj>50</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_119">
				<id>139</id>
				<edge_type>1</edge_type>
				<source_obj>12</source_obj>
				<sink_obj>50</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_120">
				<id>140</id>
				<edge_type>1</edge_type>
				<source_obj>26</source_obj>
				<sink_obj>50</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_121">
				<id>142</id>
				<edge_type>1</edge_type>
				<source_obj>141</source_obj>
				<sink_obj>55</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_122">
				<id>143</id>
				<edge_type>1</edge_type>
				<source_obj>22</source_obj>
				<sink_obj>55</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_123">
				<id>144</id>
				<edge_type>1</edge_type>
				<source_obj>17</source_obj>
				<sink_obj>55</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_124">
				<id>146</id>
				<edge_type>1</edge_type>
				<source_obj>145</source_obj>
				<sink_obj>56</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_125">
				<id>147</id>
				<edge_type>1</edge_type>
				<source_obj>13</source_obj>
				<sink_obj>56</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_126">
				<id>148</id>
				<edge_type>1</edge_type>
				<source_obj>55</source_obj>
				<sink_obj>56</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_127">
				<id>150</id>
				<edge_type>1</edge_type>
				<source_obj>149</source_obj>
				<sink_obj>57</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_128">
				<id>151</id>
				<edge_type>1</edge_type>
				<source_obj>14</source_obj>
				<sink_obj>57</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_129">
				<id>152</id>
				<edge_type>1</edge_type>
				<source_obj>11</source_obj>
				<sink_obj>57</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_130">
				<id>153</id>
				<edge_type>1</edge_type>
				<source_obj>13</source_obj>
				<sink_obj>57</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_131">
				<id>155</id>
				<edge_type>1</edge_type>
				<source_obj>154</source_obj>
				<sink_obj>58</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_132">
				<id>156</id>
				<edge_type>1</edge_type>
				<source_obj>57</source_obj>
				<sink_obj>58</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_133">
				<id>157</id>
				<edge_type>1</edge_type>
				<source_obj>58</source_obj>
				<sink_obj>59</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_134">
				<id>276</id>
				<edge_type>4</edge_type>
				<source_obj>56</source_obj>
				<sink_obj>57</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_135">
				<id>277</id>
				<edge_type>4</edge_type>
				<source_obj>50</source_obj>
				<sink_obj>57</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_136">
				<id>278</id>
				<edge_type>4</edge_type>
				<source_obj>49</source_obj>
				<sink_obj>50</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_137">
				<id>279</id>
				<edge_type>4</edge_type>
				<source_obj>47</source_obj>
				<sink_obj>48</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_138">
				<id>280</id>
				<edge_type>4</edge_type>
				<source_obj>46</source_obj>
				<sink_obj>47</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_139">
				<id>281</id>
				<edge_type>4</edge_type>
				<source_obj>46</source_obj>
				<sink_obj>55</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_140">
				<id>282</id>
				<edge_type>4</edge_type>
				<source_obj>43</source_obj>
				<sink_obj>47</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_141">
				<id>283</id>
				<edge_type>4</edge_type>
				<source_obj>40</source_obj>
				<sink_obj>46</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_142">
				<id>284</id>
				<edge_type>4</edge_type>
				<source_obj>39</source_obj>
				<sink_obj>55</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_143">
				<id>285</id>
				<edge_type>4</edge_type>
				<source_obj>38</source_obj>
				<sink_obj>39</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_144">
				<id>286</id>
				<edge_type>4</edge_type>
				<source_obj>37</source_obj>
				<sink_obj>38</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_145">
				<id>287</id>
				<edge_type>4</edge_type>
				<source_obj>37</source_obj>
				<sink_obj>43</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_146">
				<id>288</id>
				<edge_type>4</edge_type>
				<source_obj>37</source_obj>
				<sink_obj>38</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_147">
				<id>289</id>
				<edge_type>4</edge_type>
				<source_obj>38</source_obj>
				<sink_obj>39</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_148">
				<id>290</id>
				<edge_type>4</edge_type>
				<source_obj>39</source_obj>
				<sink_obj>55</sink_obj>
			</item>
		</edges>
	</cdfg>
	<cdfg_regions class_id="21" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="22" tracking_level="1" version="0" object_id="_149">
			<mId>1</mId>
			<mTag>black_scholes2</mTag>
			<mType>0</mType>
			<sub_regions>
				<count>0</count>
				<item_version>0</item_version>
			</sub_regions>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>60</item>
			</basic_blocks>
			<mII>-1</mII>
			<mDepth>-1</mDepth>
			<mMinTripCount>-1</mMinTripCount>
			<mMaxTripCount>-1</mMaxTripCount>
			<mMinLatency>43</mMinLatency>
			<mMaxLatency>-1</mMaxLatency>
			<mIsDfPipe>1</mIsDfPipe>
			<mDfPipe class_id="23" tracking_level="1" version="0" object_id="_150">
				<port_list class_id="24" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</port_list>
				<process_list class_id="25" tracking_level="0" version="0">
					<count>14</count>
					<item_version>0</item_version>
					<item class_id="26" tracking_level="1" version="0" object_id="_151">
						<type>0</type>
						<name>black_scholes2_mult2_11_U0</name>
						<ssdmobj_id>37</ssdmobj_id>
						<pins class_id="27" tracking_level="0" version="0">
							<count>4</count>
							<item_version>0</item_version>
							<item class_id="28" tracking_level="1" version="0" object_id="_152">
								<port class_id="29" tracking_level="1" version="0" object_id="_153">
									<name>return</name>
									<dir>3</dir>
									<type>1</type>
								</port>
								<inst class_id="30" tracking_level="1" version="0" object_id="_154">
									<type>0</type>
									<name>black_scholes2_mult2_11_U0</name>
									<ssdmobj_id>37</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_155">
								<port class_id_reference="29" object_id="_156">
									<name>a</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_154"></inst>
							</item>
							<item class_id_reference="28" object_id="_157">
								<port class_id_reference="29" object_id="_158">
									<name>b</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_154"></inst>
							</item>
							<item class_id_reference="28" object_id="_159">
								<port class_id_reference="29" object_id="_160">
									<name>a_out</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_154"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_161">
						<type>0</type>
						<name>black_scholes2_div_1_U0</name>
						<ssdmobj_id>38</ssdmobj_id>
						<pins>
							<count>2</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_162">
								<port class_id_reference="29" object_id="_163">
									<name>a_2</name>
									<dir>3</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id="_164">
									<type>0</type>
									<name>black_scholes2_div_1_U0</name>
									<ssdmobj_id>38</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_165">
								<port class_id_reference="29" object_id="_166">
									<name>a</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_164"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_167">
						<type>0</type>
						<name>black_scholes2_black_scholes2_Block_crit_edge14_proc_U0</name>
						<ssdmobj_id>39</ssdmobj_id>
						<pins>
							<count>4</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_168">
								<port class_id_reference="29" object_id="_169">
									<name>r</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_170">
									<type>0</type>
									<name>black_scholes2_black_scholes2_Block_crit_edge14_proc_U0</name>
									<ssdmobj_id>39</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_171">
								<port class_id_reference="29" object_id="_172">
									<name>tmp_1</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_170"></inst>
							</item>
							<item class_id_reference="28" object_id="_173">
								<port class_id_reference="29" object_id="_174">
									<name>r_out</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_170"></inst>
							</item>
							<item class_id_reference="28" object_id="_175">
								<port class_id_reference="29" object_id="_176">
									<name>ap_return</name>
									<dir>3</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_170"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_177">
						<type>0</type>
						<name>black_scholes2_mult2_12_U0</name>
						<ssdmobj_id>40</ssdmobj_id>
						<pins>
							<count>4</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_178">
								<port class_id_reference="29" object_id="_179">
									<name>return</name>
									<dir>3</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id="_180">
									<type>0</type>
									<name>black_scholes2_mult2_12_U0</name>
									<ssdmobj_id>40</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_181">
								<port class_id_reference="29" object_id="_182">
									<name>p_read</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_180"></inst>
							</item>
							<item class_id_reference="28" object_id="_183">
								<port class_id_reference="29" object_id="_184">
									<name>b</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_180"></inst>
							</item>
							<item class_id_reference="28" object_id="_185">
								<port class_id_reference="29" object_id="_186">
									<name>b_out</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_180"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_187">
						<type>0</type>
						<name>black_scholes2_mult2_11_1_U0</name>
						<ssdmobj_id>43</ssdmobj_id>
						<pins>
							<count>3</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_188">
								<port class_id_reference="29" object_id="_189">
									<name>return</name>
									<dir>3</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id="_190">
									<type>0</type>
									<name>black_scholes2_mult2_11_1_U0</name>
									<ssdmobj_id>43</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_191">
								<port class_id_reference="29" object_id="_192">
									<name>a</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_190"></inst>
							</item>
							<item class_id_reference="28" object_id="_193">
								<port class_id_reference="29" object_id="_194">
									<name>b</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_190"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_195">
						<type>0</type>
						<name>black_scholes2_sqrt1_U0</name>
						<ssdmobj_id>46</ssdmobj_id>
						<pins>
							<count>3</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_196">
								<port class_id_reference="29" object_id="_197">
									<name>return</name>
									<dir>3</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id="_198">
									<type>0</type>
									<name>black_scholes2_sqrt1_U0</name>
									<ssdmobj_id>46</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_199">
								<port class_id_reference="29" object_id="_200">
									<name>a</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_198"></inst>
							</item>
							<item class_id_reference="28" object_id="_201">
								<port class_id_reference="29" object_id="_202">
									<name>a_out</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_198"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_203">
						<type>0</type>
						<name>black_scholes2_mult2_11_2_U0</name>
						<ssdmobj_id>47</ssdmobj_id>
						<pins>
							<count>4</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_204">
								<port class_id_reference="29" object_id="_205">
									<name>return</name>
									<dir>3</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id="_206">
									<type>0</type>
									<name>black_scholes2_mult2_11_2_U0</name>
									<ssdmobj_id>47</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_207">
								<port class_id_reference="29" object_id="_208">
									<name>a</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_206"></inst>
							</item>
							<item class_id_reference="28" object_id="_209">
								<port class_id_reference="29" object_id="_210">
									<name>b</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_206"></inst>
							</item>
							<item class_id_reference="28" object_id="_211">
								<port class_id_reference="29" object_id="_212">
									<name>a_out</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_206"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_213">
						<type>0</type>
						<name>black_scholes2_black_scholes2_Block_crit_edge111_proc_U0</name>
						<ssdmobj_id>48</ssdmobj_id>
						<pins>
							<count>3</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_214">
								<port class_id_reference="29" object_id="_215">
									<name>tmp_3</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_216">
									<type>0</type>
									<name>black_scholes2_black_scholes2_Block_crit_edge111_proc_U0</name>
									<ssdmobj_id>48</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_217">
								<port class_id_reference="29" object_id="_218">
									<name>tmp2_1</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_216"></inst>
							</item>
							<item class_id_reference="28" object_id="_219">
								<port class_id_reference="29" object_id="_220">
									<name>ap_return</name>
									<dir>3</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_216"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_221">
						<type>0</type>
						<name>black_scholes2_expo11_U0</name>
						<ssdmobj_id>49</ssdmobj_id>
						<pins>
							<count>2</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_222">
								<port class_id_reference="29" object_id="_223">
									<name>return</name>
									<dir>3</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id="_224">
									<type>0</type>
									<name>black_scholes2_expo11_U0</name>
									<ssdmobj_id>49</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_225">
								<port class_id_reference="29" object_id="_226">
									<name>p_read</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_224"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_227">
						<type>0</type>
						<name>black_scholes2_mult2_11_3_U0</name>
						<ssdmobj_id>50</ssdmobj_id>
						<pins>
							<count>4</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_228">
								<port class_id_reference="29" object_id="_229">
									<name>return</name>
									<dir>3</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id="_230">
									<type>0</type>
									<name>black_scholes2_mult2_11_3_U0</name>
									<ssdmobj_id>50</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_231">
								<port class_id_reference="29" object_id="_232">
									<name>a</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_230"></inst>
							</item>
							<item class_id_reference="28" object_id="_233">
								<port class_id_reference="29" object_id="_234">
									<name>b</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_230"></inst>
							</item>
							<item class_id_reference="28" object_id="_235">
								<port class_id_reference="29" object_id="_236">
									<name>a_out</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_230"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_237">
						<type>0</type>
						<name>black_scholes2_black_scholes2_Block_crit_edge115_proc_U0</name>
						<ssdmobj_id>55</ssdmobj_id>
						<pins>
							<count>3</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_238">
								<port class_id_reference="29" object_id="_239">
									<name>r</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_240">
									<type>0</type>
									<name>black_scholes2_black_scholes2_Block_crit_edge115_proc_U0</name>
									<ssdmobj_id>55</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_241">
								<port class_id_reference="29" object_id="_242">
									<name>T</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_240"></inst>
							</item>
							<item class_id_reference="28" object_id="_243">
								<port class_id_reference="29" object_id="_244">
									<name>ap_return</name>
									<dir>3</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_240"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_245">
						<type>0</type>
						<name>black_scholes2_expo12_U0</name>
						<ssdmobj_id>56</ssdmobj_id>
						<pins>
							<count>2</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_246">
								<port class_id_reference="29" object_id="_247">
									<name>return</name>
									<dir>3</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id="_248">
									<type>0</type>
									<name>black_scholes2_expo12_U0</name>
									<ssdmobj_id>56</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_249">
								<port class_id_reference="29" object_id="_250">
									<name>p_read</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_248"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_251">
						<type>0</type>
						<name>black_scholes2_black_scholes2_Block_crit_edge117_proc_U0</name>
						<ssdmobj_id>57</ssdmobj_id>
						<pins>
							<count>4</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_252">
								<port class_id_reference="29" object_id="_253">
									<name>tmp3_2</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_254">
									<type>0</type>
									<name>black_scholes2_black_scholes2_Block_crit_edge117_proc_U0</name>
									<ssdmobj_id>57</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_255">
								<port class_id_reference="29" object_id="_256">
									<name>E</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_254"></inst>
							</item>
							<item class_id_reference="28" object_id="_257">
								<port class_id_reference="29" object_id="_258">
									<name>tmp4</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_254"></inst>
							</item>
							<item class_id_reference="28" object_id="_259">
								<port class_id_reference="29" object_id="_260">
									<name>ap_return</name>
									<dir>3</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_254"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_261">
						<type>0</type>
						<name>black_scholes2_black_scholes2_Block_crit_edge_proc_U0</name>
						<ssdmobj_id>58</ssdmobj_id>
						<pins>
							<count>2</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_262">
								<port class_id_reference="29" object_id="_263">
									<name>p_read</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_264">
									<type>0</type>
									<name>black_scholes2_black_scholes2_Block_crit_edge_proc_U0</name>
									<ssdmobj_id>58</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_265">
								<port class_id_reference="29" object_id="_266">
									<name>ap_return</name>
									<dir>3</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_264"></inst>
							</item>
						</pins>
					</item>
				</process_list>
				<channel_list class_id="31" tracking_level="0" version="0">
					<count>19</count>
					<item_version>0</item_version>
					<item class_id="32" tracking_level="1" version="0" object_id="_267">
						<type>1</type>
						<name>p_channel35</name>
						<ssdmobj_id>25</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>64</bitwidth>
						<source class_id_reference="28" object_id="_268">
							<port class_id_reference="29" object_id="_269">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_154"></inst>
						</source>
						<sink class_id_reference="28" object_id="_270">
							<port class_id_reference="29" object_id="_271">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_164"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_272">
						<type>1</type>
						<name>sigma_channel_channel</name>
						<ssdmobj_id>24</ssdmobj_id>
						<ctype>0</ctype>
						<depth>0</depth>
						<bitwidth>64</bitwidth>
						<source class_id_reference="28" object_id="_273">
							<port class_id_reference="29" object_id="_274">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_154"></inst>
						</source>
						<sink class_id_reference="28" object_id="_275">
							<port class_id_reference="29" object_id="_276">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_190"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_277">
						<type>1</type>
						<name>tmp_1_channel</name>
						<ssdmobj_id>23</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>64</bitwidth>
						<source class_id_reference="28" object_id="_278">
							<port class_id_reference="29" object_id="_279">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_164"></inst>
						</source>
						<sink class_id_reference="28" object_id="_280">
							<port class_id_reference="29" object_id="_281">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_170"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_282">
						<type>1</type>
						<name>r_channel_channel</name>
						<ssdmobj_id>22</ssdmobj_id>
						<ctype>0</ctype>
						<depth>0</depth>
						<bitwidth>64</bitwidth>
						<source class_id_reference="28" object_id="_283">
							<port class_id_reference="29" object_id="_284">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_170"></inst>
						</source>
						<sink class_id_reference="28" object_id="_285">
							<port class_id_reference="29" object_id="_286">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_240"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_287">
						<type>1</type>
						<name>tmp_2_loc_channel</name>
						<ssdmobj_id>39</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>64</bitwidth>
						<source class_id_reference="28" object_id="_288">
							<port class_id_reference="29" object_id="_289">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_170"></inst>
						</source>
						<sink class_id_reference="28" object_id="_290">
							<port class_id_reference="29" object_id="_291">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_180"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_292">
						<type>1</type>
						<name>p_channel36</name>
						<ssdmobj_id>21</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>64</bitwidth>
						<source class_id_reference="28" object_id="_293">
							<port class_id_reference="29" object_id="_294">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_180"></inst>
						</source>
						<sink class_id_reference="28" object_id="_295">
							<port class_id_reference="29" object_id="_296">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_216"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_297">
						<type>1</type>
						<name>T_channel_channel</name>
						<ssdmobj_id>20</ssdmobj_id>
						<ctype>0</ctype>
						<depth>0</depth>
						<bitwidth>64</bitwidth>
						<source class_id_reference="28" object_id="_298">
							<port class_id_reference="29" object_id="_299">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_180"></inst>
						</source>
						<sink class_id_reference="28" object_id="_300">
							<port class_id_reference="29" object_id="_301">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_198"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_302">
						<type>1</type>
						<name>p_channel37</name>
						<ssdmobj_id>19</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>64</bitwidth>
						<source class_id_reference="28" object_id="_303">
							<port class_id_reference="29" object_id="_304">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_190"></inst>
						</source>
						<sink class_id_reference="28" object_id="_305">
							<port class_id_reference="29" object_id="_306">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_206"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_307">
						<type>1</type>
						<name>p_channel38</name>
						<ssdmobj_id>18</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>64</bitwidth>
						<source class_id_reference="28" object_id="_308">
							<port class_id_reference="29" object_id="_309">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_198"></inst>
						</source>
						<sink class_id_reference="28" object_id="_310">
							<port class_id_reference="29" object_id="_311">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_206"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_312">
						<type>1</type>
						<name>T_channel31_channel</name>
						<ssdmobj_id>17</ssdmobj_id>
						<ctype>0</ctype>
						<depth>0</depth>
						<bitwidth>64</bitwidth>
						<source class_id_reference="28" object_id="_313">
							<port class_id_reference="29" object_id="_314">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_198"></inst>
						</source>
						<sink class_id_reference="28" object_id="_315">
							<port class_id_reference="29" object_id="_316">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_240"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_317">
						<type>1</type>
						<name>p_channel39</name>
						<ssdmobj_id>16</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>64</bitwidth>
						<source class_id_reference="28" object_id="_318">
							<port class_id_reference="29" object_id="_319">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_206"></inst>
						</source>
						<sink class_id_reference="28" object_id="_320">
							<port class_id_reference="29" object_id="_321">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_216"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_322">
						<type>1</type>
						<name>p_channel</name>
						<ssdmobj_id>27</ssdmobj_id>
						<ctype>3</ctype>
						<depth>0</depth>
						<bitwidth>0</bitwidth>
						<source class_id="-1"></source>
						<sink class_id="-1"></sink>
					</item>
					<item class_id_reference="32" object_id="_323">
						<type>1</type>
						<name>tmp3_loc_channel</name>
						<ssdmobj_id>48</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>64</bitwidth>
						<source class_id_reference="28" object_id="_324">
							<port class_id_reference="29" object_id="_325">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_216"></inst>
						</source>
						<sink class_id_reference="28" object_id="_326">
							<port class_id_reference="29" object_id="_327">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_224"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_328">
						<type>1</type>
						<name>p_channel40</name>
						<ssdmobj_id>15</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>64</bitwidth>
						<source class_id_reference="28" object_id="_329">
							<port class_id_reference="29" object_id="_330">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_224"></inst>
						</source>
						<sink class_id_reference="28" object_id="_331">
							<port class_id_reference="29" object_id="_332">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_230"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_333">
						<type>1</type>
						<name>p_channel41</name>
						<ssdmobj_id>14</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>64</bitwidth>
						<source class_id_reference="28" object_id="_334">
							<port class_id_reference="29" object_id="_335">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_230"></inst>
						</source>
						<sink class_id_reference="28" object_id="_336">
							<port class_id_reference="29" object_id="_337">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_254"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_338">
						<type>1</type>
						<name>p_channel32</name>
						<ssdmobj_id>26</ssdmobj_id>
						<ctype>3</ctype>
						<depth>0</depth>
						<bitwidth>0</bitwidth>
						<source class_id="-1"></source>
						<sink class_id="-1"></sink>
					</item>
					<item class_id_reference="32" object_id="_339">
						<type>1</type>
						<name>call_ret</name>
						<ssdmobj_id>55</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>64</bitwidth>
						<source class_id_reference="28" object_id="_340">
							<port class_id_reference="29" object_id="_341">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_240"></inst>
						</source>
						<sink class_id_reference="28" object_id="_342">
							<port class_id_reference="29" object_id="_343">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_248"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_344">
						<type>1</type>
						<name>p_channel42</name>
						<ssdmobj_id>13</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>64</bitwidth>
						<source class_id_reference="28" object_id="_345">
							<port class_id_reference="29" object_id="_346">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_248"></inst>
						</source>
						<sink class_id_reference="28" object_id="_347">
							<port class_id_reference="29" object_id="_348">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_254"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_349">
						<type>1</type>
						<name>tmp4_1_loc_channel</name>
						<ssdmobj_id>57</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>64</bitwidth>
						<source class_id_reference="28" object_id="_350">
							<port class_id_reference="29" object_id="_351">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_254"></inst>
						</source>
						<sink class_id_reference="28" object_id="_352">
							<port class_id_reference="29" object_id="_353">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_264"></inst>
						</sink>
					</item>
				</channel_list>
				<net_list class_id="33" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</net_list>
			</mDfPipe>
		</item>
	</cdfg_regions>
	<fsm class_id="-1"></fsm>
	<res class_id="35" tracking_level="1" version="0" object_id="_354">
		<dp_component_resource class_id="36" tracking_level="0" version="0">
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
		<dp_component_map class_id="37" tracking_level="0" version="0">
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
	<node_label_latency class_id="38" tracking_level="0" version="0">
		<count>36</count>
		<item_version>0</item_version>
		<item class_id="39" tracking_level="0" version="0">
			<first>7</first>
			<second class_id="40" tracking_level="0" version="0">
				<first>2</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>8</first>
			<second>
				<first>6</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>9</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>10</first>
			<second>
				<first>4</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>11</first>
			<second>
				<first>17</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>12</first>
			<second>
				<first>15</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>13</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>14</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>15</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>16</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>17</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>18</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>19</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>20</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>21</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>22</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>23</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>24</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>25</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>26</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>27</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>37</first>
			<second>
				<first>0</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>38</first>
			<second>
				<first>2</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>39</first>
			<second>
				<first>4</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>40</first>
			<second>
				<first>6</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>43</first>
			<second>
				<first>2</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>46</first>
			<second>
				<first>8</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>47</first>
			<second>
				<first>10</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>48</first>
			<second>
				<first>12</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>49</first>
			<second>
				<first>13</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>50</first>
			<second>
				<first>15</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>55</first>
			<second>
				<first>10</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>56</first>
			<second>
				<first>12</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>57</first>
			<second>
				<first>17</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>58</first>
			<second>
				<first>18</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>59</first>
			<second>
				<first>18</first>
				<second>0</second>
			</second>
		</item>
	</node_label_latency>
	<bblk_ent_exit class_id="41" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="42" tracking_level="0" version="0">
			<first>60</first>
			<second class_id="43" tracking_level="0" version="0">
				<first>0</first>
				<second>18</second>
			</second>
		</item>
	</bblk_ent_exit>
	<regions class_id="44" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="45" tracking_level="1" version="0" object_id="_355">
			<region_name>black_scholes2</region_name>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>60</item>
			</basic_blocks>
			<nodes>
				<count>53</count>
				<item_version>0</item_version>
				<item>7</item>
				<item>8</item>
				<item>9</item>
				<item>10</item>
				<item>11</item>
				<item>12</item>
				<item>13</item>
				<item>14</item>
				<item>15</item>
				<item>16</item>
				<item>17</item>
				<item>18</item>
				<item>19</item>
				<item>20</item>
				<item>21</item>
				<item>22</item>
				<item>23</item>
				<item>24</item>
				<item>25</item>
				<item>26</item>
				<item>27</item>
				<item>28</item>
				<item>29</item>
				<item>30</item>
				<item>31</item>
				<item>32</item>
				<item>33</item>
				<item>34</item>
				<item>35</item>
				<item>36</item>
				<item>37</item>
				<item>38</item>
				<item>39</item>
				<item>40</item>
				<item>41</item>
				<item>42</item>
				<item>43</item>
				<item>44</item>
				<item>45</item>
				<item>46</item>
				<item>47</item>
				<item>48</item>
				<item>49</item>
				<item>50</item>
				<item>51</item>
				<item>52</item>
				<item>53</item>
				<item>54</item>
				<item>55</item>
				<item>56</item>
				<item>57</item>
				<item>58</item>
				<item>59</item>
			</nodes>
			<anchor_node>-1</anchor_node>
			<region_type>16</region_type>
			<interval>0</interval>
			<pipe_depth>0</pipe_depth>
		</item>
	</regions>
	<dp_fu_nodes class_id="46" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes>
	<dp_fu_nodes_expression class_id="47" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_expression>
	<dp_fu_nodes_module>
		<count>0</count>
		<item_version>0</item_version>
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
		<count>0</count>
		<item_version>0</item_version>
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
	<dp_port_io_nodes class_id="49" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_port_io_nodes>
	<port2core class_id="50" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</port2core>
	<node2core>
		<count>0</count>
		<item_version>0</item_version>
	</node2core>
</syndb>
</boost_serialization>

