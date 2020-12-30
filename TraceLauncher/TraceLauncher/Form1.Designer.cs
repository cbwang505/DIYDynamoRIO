namespace TraceLauncher
{
	partial class Form1
	{
		/// <summary>
		/// 必需的设计器变量。
		/// </summary>
		private System.ComponentModel.IContainer components = null;

		/// <summary>
		/// 清理所有正在使用的资源。
		/// </summary>
		/// <param name="disposing">如果应释放托管资源，为 true；否则为 false。</param>
		protected override void Dispose(bool disposing)
		{
			if (disposing && (components != null))
			{
				components.Dispose();
			}
			base.Dispose(disposing);
		}

		#region Windows 窗体设计器生成的代码

		/// <summary>
		/// 设计器支持所需的方法 - 不要修改
		/// 使用代码编辑器修改此方法的内容。
		/// </summary>
		private void InitializeComponent()
		{
			System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
			this.Start_Program = new System.Windows.Forms.TextBox();
			this.button1 = new System.Windows.Forms.Button();
			this.Program_Argument = new System.Windows.Forms.TextBox();
			this.button2 = new System.Windows.Forms.Button();
			this.Drrun_Path = new System.Windows.Forms.TextBox();
			this.checkBox1 = new System.Windows.Forms.CheckBox();
			this.checkBox2 = new System.Windows.Forms.CheckBox();
			this.checkBox3 = new System.Windows.Forms.CheckBox();
			this.checkBox4 = new System.Windows.Forms.CheckBox();
			this.button3 = new System.Windows.Forms.Button();
			this.Plugin_Path = new System.Windows.Forms.TextBox();
			this.checkBox5 = new System.Windows.Forms.CheckBox();
			this.button4 = new System.Windows.Forms.Button();
			this.Logger_Dir = new System.Windows.Forms.TextBox();
			this.trace_module = new System.Windows.Forms.CheckBox();
			this.trace_module_value = new System.Windows.Forms.TextBox();
			this.target_module = new System.Windows.Forms.CheckBox();
			this.target_module_value = new System.Windows.Forms.TextBox();
			this.from_module = new System.Windows.Forms.CheckBox();
			this.from_module_value = new System.Windows.Forms.TextBox();
			this.target_offset = new System.Windows.Forms.CheckBox();
			this.target_offset_value = new System.Windows.Forms.TextBox();
			this.call_convention = new System.Windows.Forms.CheckBox();
			this.target_method_value = new System.Windows.Forms.TextBox();
			this.target_method = new System.Windows.Forms.CheckBox();
			this.call_convention_value = new System.Windows.Forms.ComboBox();
			this.groupBox1 = new System.Windows.Forms.GroupBox();
			this.disable_traces = new System.Windows.Forms.CheckBox();
			this.verbose = new System.Windows.Forms.CheckBox();
			this.dump_text = new System.Windows.Forms.CheckBox();
			this.alway_instruction = new System.Windows.Forms.CheckBox();
			this.groupBox2 = new System.Windows.Forms.GroupBox();
			this.restrict_func = new System.Windows.Forms.CheckBox();
			this.follow_func = new System.Windows.Forms.CheckBox();
			this.start = new System.Windows.Forms.Button();
			this.groupBox3 = new System.Windows.Forms.GroupBox();
			this.pid = new System.Windows.Forms.TextBox();
			this.checkBox17 = new System.Windows.Forms.CheckBox();
			this.checkBox16 = new System.Windows.Forms.CheckBox();
			this.Drconfig_Path = new System.Windows.Forms.TextBox();
			this.button6 = new System.Windows.Forms.Button();
			this.nudge = new System.Windows.Forms.Button();
			this.button5 = new System.Windows.Forms.Button();
			this.groupBox4 = new System.Windows.Forms.GroupBox();
			this.button8 = new System.Windows.Forms.Button();
			this.label3 = new System.Windows.Forms.Label();
			this.Windbg_Argument = new System.Windows.Forms.TextBox();
			this.label2 = new System.Windows.Forms.Label();
			this.label1 = new System.Windows.Forms.Label();
			this.Windbg_Script = new System.Windows.Forms.TextBox();
			this.Windbg_Path = new System.Windows.Forms.TextBox();
			this.button7 = new System.Windows.Forms.Button();
			this.AutoCheck = new System.Windows.Forms.Button();
			this.CMD_Line = new System.Windows.Forms.RichTextBox();
			this.groupBox1.SuspendLayout();
			this.groupBox2.SuspendLayout();
			this.groupBox3.SuspendLayout();
			this.groupBox4.SuspendLayout();
			this.SuspendLayout();
			// 
			// Start_Program
			// 
			this.Start_Program.Location = new System.Drawing.Point(141, 21);
			this.Start_Program.Name = "Start_Program";
			this.Start_Program.Size = new System.Drawing.Size(568, 21);
			this.Start_Program.TabIndex = 1;
			this.Start_Program.TextChanged += new System.EventHandler(this.AutoCmdline_Changed);
			// 
			// button1
			// 
			this.button1.Location = new System.Drawing.Point(729, 20);
			this.button1.Name = "button1";
			this.button1.Size = new System.Drawing.Size(75, 23);
			this.button1.TabIndex = 2;
			this.button1.Text = "Pick";
			this.button1.UseVisualStyleBackColor = true;
			this.button1.Click += new System.EventHandler(this.button1_Click);
			// 
			// Program_Argument
			// 
			this.Program_Argument.Location = new System.Drawing.Point(141, 55);
			this.Program_Argument.Name = "Program_Argument";
			this.Program_Argument.Size = new System.Drawing.Size(658, 21);
			this.Program_Argument.TabIndex = 4;
			this.Program_Argument.TextChanged += new System.EventHandler(this.AutoCmdline_Changed);
			// 
			// button2
			// 
			this.button2.Location = new System.Drawing.Point(729, 88);
			this.button2.Name = "button2";
			this.button2.Size = new System.Drawing.Size(75, 23);
			this.button2.TabIndex = 7;
			this.button2.Text = "Pick";
			this.button2.UseVisualStyleBackColor = true;
			this.button2.Click += new System.EventHandler(this.button2_Click);
			// 
			// Drrun_Path
			// 
			this.Drrun_Path.Location = new System.Drawing.Point(141, 89);
			this.Drrun_Path.Name = "Drrun_Path";
			this.Drrun_Path.Size = new System.Drawing.Size(568, 21);
			this.Drrun_Path.TabIndex = 6;
			this.Drrun_Path.TextChanged += new System.EventHandler(this.AutoCmdline_Changed);
			// 
			// checkBox1
			// 
			this.checkBox1.AutoSize = true;
			this.checkBox1.Checked = true;
			this.checkBox1.CheckState = System.Windows.Forms.CheckState.Checked;
			this.checkBox1.Enabled = false;
			this.checkBox1.Location = new System.Drawing.Point(15, 23);
			this.checkBox1.Name = "checkBox1";
			this.checkBox1.Size = new System.Drawing.Size(108, 16);
			this.checkBox1.TabIndex = 8;
			this.checkBox1.Text = "Start Program:";
			this.checkBox1.UseVisualStyleBackColor = true;
			// 
			// checkBox2
			// 
			this.checkBox2.AutoSize = true;
			this.checkBox2.Location = new System.Drawing.Point(15, 57);
			this.checkBox2.Name = "checkBox2";
			this.checkBox2.Size = new System.Drawing.Size(126, 16);
			this.checkBox2.TabIndex = 9;
			this.checkBox2.Text = "Program Argument:";
			this.checkBox2.UseVisualStyleBackColor = true;
			// 
			// checkBox3
			// 
			this.checkBox3.AutoSize = true;
			this.checkBox3.Checked = true;
			this.checkBox3.CheckState = System.Windows.Forms.CheckState.Checked;
			this.checkBox3.Enabled = false;
			this.checkBox3.Location = new System.Drawing.Point(15, 91);
			this.checkBox3.Name = "checkBox3";
			this.checkBox3.Size = new System.Drawing.Size(90, 16);
			this.checkBox3.TabIndex = 10;
			this.checkBox3.Text = "Drrun Path:";
			this.checkBox3.UseVisualStyleBackColor = true;
			// 
			// checkBox4
			// 
			this.checkBox4.AutoSize = true;
			this.checkBox4.Checked = true;
			this.checkBox4.CheckState = System.Windows.Forms.CheckState.Checked;
			this.checkBox4.Enabled = false;
			this.checkBox4.Location = new System.Drawing.Point(15, 125);
			this.checkBox4.Name = "checkBox4";
			this.checkBox4.Size = new System.Drawing.Size(96, 16);
			this.checkBox4.TabIndex = 13;
			this.checkBox4.Text = "Plugin Path:";
			this.checkBox4.UseVisualStyleBackColor = true;
			// 
			// button3
			// 
			this.button3.Location = new System.Drawing.Point(729, 122);
			this.button3.Name = "button3";
			this.button3.Size = new System.Drawing.Size(75, 23);
			this.button3.TabIndex = 12;
			this.button3.Text = "Pick";
			this.button3.UseVisualStyleBackColor = true;
			this.button3.Click += new System.EventHandler(this.button3_Click);
			// 
			// Plugin_Path
			// 
			this.Plugin_Path.Location = new System.Drawing.Point(141, 123);
			this.Plugin_Path.Name = "Plugin_Path";
			this.Plugin_Path.Size = new System.Drawing.Size(568, 21);
			this.Plugin_Path.TabIndex = 11;
			this.Plugin_Path.TextChanged += new System.EventHandler(this.AutoCmdline_Changed);
			// 
			// checkBox5
			// 
			this.checkBox5.AutoSize = true;
			this.checkBox5.Checked = true;
			this.checkBox5.CheckState = System.Windows.Forms.CheckState.Checked;
			this.checkBox5.Enabled = false;
			this.checkBox5.Location = new System.Drawing.Point(15, 159);
			this.checkBox5.Name = "checkBox5";
			this.checkBox5.Size = new System.Drawing.Size(90, 16);
			this.checkBox5.TabIndex = 16;
			this.checkBox5.Text = "Logger Dir:";
			this.checkBox5.UseVisualStyleBackColor = true;
			// 
			// button4
			// 
			this.button4.Location = new System.Drawing.Point(729, 156);
			this.button4.Name = "button4";
			this.button4.Size = new System.Drawing.Size(75, 23);
			this.button4.TabIndex = 15;
			this.button4.Text = "Pick";
			this.button4.UseVisualStyleBackColor = true;
			this.button4.Click += new System.EventHandler(this.button4_Click);
			// 
			// Logger_Dir
			// 
			this.Logger_Dir.Location = new System.Drawing.Point(141, 157);
			this.Logger_Dir.Name = "Logger_Dir";
			this.Logger_Dir.Size = new System.Drawing.Size(568, 21);
			this.Logger_Dir.TabIndex = 14;
			this.Logger_Dir.TextChanged += new System.EventHandler(this.AutoCmdline_Changed);
			// 
			// trace_module
			// 
			this.trace_module.AutoSize = true;
			this.trace_module.Checked = true;
			this.trace_module.CheckState = System.Windows.Forms.CheckState.Checked;
			this.trace_module.Enabled = false;
			this.trace_module.Location = new System.Drawing.Point(16, 27);
			this.trace_module.Name = "trace_module";
			this.trace_module.Size = new System.Drawing.Size(102, 16);
			this.trace_module.TabIndex = 17;
			this.trace_module.Text = "trace module:";
			this.trace_module.UseVisualStyleBackColor = true;
			this.trace_module.CheckedChanged += new System.EventHandler(this.AutoCmdline_Changed);
			// 
			// trace_module_value
			// 
			this.trace_module_value.Location = new System.Drawing.Point(136, 25);
			this.trace_module_value.Name = "trace_module_value";
			this.trace_module_value.Size = new System.Drawing.Size(128, 21);
			this.trace_module_value.TabIndex = 18;
			this.trace_module_value.TextChanged += new System.EventHandler(this.AutoCmdline_Changed);
			// 
			// target_module
			// 
			this.target_module.AutoSize = true;
			this.target_module.Location = new System.Drawing.Point(11, 33);
			this.target_module.Name = "target_module";
			this.target_module.Size = new System.Drawing.Size(108, 16);
			this.target_module.TabIndex = 19;
			this.target_module.Text = "target module:";
			this.target_module.UseVisualStyleBackColor = true;
			this.target_module.CheckedChanged += new System.EventHandler(this.AutoCmdline_Changed);
			// 
			// target_module_value
			// 
			this.target_module_value.Location = new System.Drawing.Point(136, 31);
			this.target_module_value.Name = "target_module_value";
			this.target_module_value.Size = new System.Drawing.Size(128, 21);
			this.target_module_value.TabIndex = 20;
			this.target_module_value.TextChanged += new System.EventHandler(this.AutoCmdline_Changed);
			// 
			// from_module
			// 
			this.from_module.AutoSize = true;
			this.from_module.Location = new System.Drawing.Point(280, 33);
			this.from_module.Name = "from_module";
			this.from_module.Size = new System.Drawing.Size(96, 16);
			this.from_module.TabIndex = 21;
			this.from_module.Text = "from module:";
			this.from_module.UseVisualStyleBackColor = true;
			this.from_module.CheckedChanged += new System.EventHandler(this.AutoCmdline_Changed);
			// 
			// from_module_value
			// 
			this.from_module_value.Location = new System.Drawing.Point(396, 31);
			this.from_module_value.Name = "from_module_value";
			this.from_module_value.Size = new System.Drawing.Size(128, 21);
			this.from_module_value.TabIndex = 22;
			this.from_module_value.TextChanged += new System.EventHandler(this.AutoCmdline_Changed);
			// 
			// target_offset
			// 
			this.target_offset.AutoSize = true;
			this.target_offset.Location = new System.Drawing.Point(11, 62);
			this.target_offset.Name = "target_offset";
			this.target_offset.Size = new System.Drawing.Size(108, 16);
			this.target_offset.TabIndex = 23;
			this.target_offset.Text = "target offset:";
			this.target_offset.UseVisualStyleBackColor = true;
			this.target_offset.CheckedChanged += new System.EventHandler(this.AutoCmdline_Changed);
			// 
			// target_offset_value
			// 
			this.target_offset_value.Location = new System.Drawing.Point(136, 60);
			this.target_offset_value.Name = "target_offset_value";
			this.target_offset_value.Size = new System.Drawing.Size(128, 21);
			this.target_offset_value.TabIndex = 24;
			this.target_offset_value.TextChanged += new System.EventHandler(this.AutoCmdline_Changed);
			// 
			// call_convention
			// 
			this.call_convention.AutoSize = true;
			this.call_convention.Location = new System.Drawing.Point(540, 33);
			this.call_convention.Name = "call_convention";
			this.call_convention.Size = new System.Drawing.Size(84, 16);
			this.call_convention.TabIndex = 25;
			this.call_convention.Text = "call type:";
			this.call_convention.UseVisualStyleBackColor = true;
			this.call_convention.CheckedChanged += new System.EventHandler(this.AutoCmdline_Changed);
			// 
			// target_method_value
			// 
			this.target_method_value.Location = new System.Drawing.Point(396, 60);
			this.target_method_value.Name = "target_method_value";
			this.target_method_value.Size = new System.Drawing.Size(128, 21);
			this.target_method_value.TabIndex = 27;
			this.target_method_value.TextChanged += new System.EventHandler(this.AutoCmdline_Changed);
			// 
			// target_method
			// 
			this.target_method.AutoSize = true;
			this.target_method.Location = new System.Drawing.Point(280, 62);
			this.target_method.Name = "target_method";
			this.target_method.Size = new System.Drawing.Size(108, 16);
			this.target_method.TabIndex = 26;
			this.target_method.Text = "target method:";
			this.target_method.UseVisualStyleBackColor = true;
			this.target_method.CheckedChanged += new System.EventHandler(this.AutoCmdline_Changed);
			// 
			// call_convention_value
			// 
			this.call_convention_value.FormattingEnabled = true;
			this.call_convention_value.Items.AddRange(new object[] {
            "stdcall",
            "fastcall",
            "thiscall"});
			this.call_convention_value.Location = new System.Drawing.Point(655, 31);
			this.call_convention_value.Name = "call_convention_value";
			this.call_convention_value.Size = new System.Drawing.Size(128, 20);
			this.call_convention_value.TabIndex = 28;
			this.call_convention_value.SelectedIndexChanged += new System.EventHandler(this.AutoCmdline_Changed);
			// 
			// groupBox1
			// 
			this.groupBox1.Controls.Add(this.disable_traces);
			this.groupBox1.Controls.Add(this.verbose);
			this.groupBox1.Controls.Add(this.dump_text);
			this.groupBox1.Controls.Add(this.alway_instruction);
			this.groupBox1.Controls.Add(this.trace_module);
			this.groupBox1.Controls.Add(this.trace_module_value);
			this.groupBox1.Location = new System.Drawing.Point(15, 193);
			this.groupBox1.Name = "groupBox1";
			this.groupBox1.Size = new System.Drawing.Size(789, 64);
			this.groupBox1.TabIndex = 29;
			this.groupBox1.TabStop = false;
			this.groupBox1.Text = "Module Trace Option";
			// 
			// disable_traces
			// 
			this.disable_traces.AutoSize = true;
			this.disable_traces.Checked = true;
			this.disable_traces.CheckState = System.Windows.Forms.CheckState.Checked;
			this.disable_traces.Location = new System.Drawing.Point(274, 27);
			this.disable_traces.Name = "disable_traces";
			this.disable_traces.Size = new System.Drawing.Size(114, 16);
			this.disable_traces.TabIndex = 34;
			this.disable_traces.Text = "disable traces ";
			this.disable_traces.UseVisualStyleBackColor = true;
			this.disable_traces.CheckedChanged += new System.EventHandler(this.AutoCmdline_Changed);
			// 
			// verbose
			// 
			this.verbose.AutoSize = true;
			this.verbose.Location = new System.Drawing.Point(629, 27);
			this.verbose.Name = "verbose";
			this.verbose.Size = new System.Drawing.Size(66, 16);
			this.verbose.TabIndex = 33;
			this.verbose.Text = "verbose";
			this.verbose.UseVisualStyleBackColor = true;
			this.verbose.CheckedChanged += new System.EventHandler(this.AutoCmdline_Changed);
			// 
			// dump_text
			// 
			this.dump_text.AutoSize = true;
			this.dump_text.Location = new System.Drawing.Point(538, 27);
			this.dump_text.Name = "dump_text";
			this.dump_text.Size = new System.Drawing.Size(78, 16);
			this.dump_text.TabIndex = 32;
			this.dump_text.Text = "dump text";
			this.dump_text.UseVisualStyleBackColor = true;
			this.dump_text.CheckedChanged += new System.EventHandler(this.AutoCmdline_Changed);
			// 
			// alway_instruction
			// 
			this.alway_instruction.AutoSize = true;
			this.alway_instruction.Location = new System.Drawing.Point(394, 27);
			this.alway_instruction.Name = "alway_instruction";
			this.alway_instruction.Size = new System.Drawing.Size(126, 16);
			this.alway_instruction.TabIndex = 31;
			this.alway_instruction.Text = "alway instruction";
			this.alway_instruction.UseVisualStyleBackColor = true;
			this.alway_instruction.CheckedChanged += new System.EventHandler(this.AutoCmdline_Changed);
			// 
			// groupBox2
			// 
			this.groupBox2.Controls.Add(this.restrict_func);
			this.groupBox2.Controls.Add(this.follow_func);
			this.groupBox2.Controls.Add(this.target_module_value);
			this.groupBox2.Controls.Add(this.target_module);
			this.groupBox2.Controls.Add(this.target_method_value);
			this.groupBox2.Controls.Add(this.target_method);
			this.groupBox2.Controls.Add(this.call_convention_value);
			this.groupBox2.Controls.Add(this.from_module_value);
			this.groupBox2.Controls.Add(this.target_offset_value);
			this.groupBox2.Controls.Add(this.target_offset);
			this.groupBox2.Controls.Add(this.from_module);
			this.groupBox2.Controls.Add(this.call_convention);
			this.groupBox2.Location = new System.Drawing.Point(15, 263);
			this.groupBox2.Name = "groupBox2";
			this.groupBox2.Size = new System.Drawing.Size(789, 88);
			this.groupBox2.TabIndex = 30;
			this.groupBox2.TabStop = false;
			this.groupBox2.Text = "Function Trace Option";
			// 
			// restrict_func
			// 
			this.restrict_func.AutoSize = true;
			this.restrict_func.Location = new System.Drawing.Point(655, 65);
			this.restrict_func.Name = "restrict_func";
			this.restrict_func.Size = new System.Drawing.Size(102, 16);
			this.restrict_func.TabIndex = 30;
			this.restrict_func.Text = "restrict func";
			this.restrict_func.UseVisualStyleBackColor = true;
			this.restrict_func.CheckedChanged += new System.EventHandler(this.AutoCmdline_Changed);
			// 
			// follow_func
			// 
			this.follow_func.AutoSize = true;
			this.follow_func.Location = new System.Drawing.Point(540, 65);
			this.follow_func.Name = "follow_func";
			this.follow_func.Size = new System.Drawing.Size(90, 16);
			this.follow_func.TabIndex = 29;
			this.follow_func.Text = "follow func";
			this.follow_func.UseVisualStyleBackColor = true;
			this.follow_func.CheckedChanged += new System.EventHandler(this.AutoCmdline_Changed);
			// 
			// start
			// 
			this.start.Location = new System.Drawing.Point(560, 637);
			this.start.Name = "start";
			this.start.Size = new System.Drawing.Size(240, 44);
			this.start.TabIndex = 31;
			this.start.Text = "Start Trace Program By DynamoRIO";
			this.start.UseVisualStyleBackColor = true;
			this.start.Click += new System.EventHandler(this.start_Click);
			// 
			// groupBox3
			// 
			this.groupBox3.Controls.Add(this.pid);
			this.groupBox3.Controls.Add(this.checkBox17);
			this.groupBox3.Controls.Add(this.checkBox16);
			this.groupBox3.Controls.Add(this.Drconfig_Path);
			this.groupBox3.Controls.Add(this.button6);
			this.groupBox3.Location = new System.Drawing.Point(15, 366);
			this.groupBox3.Name = "groupBox3";
			this.groupBox3.Size = new System.Drawing.Size(789, 84);
			this.groupBox3.TabIndex = 32;
			this.groupBox3.TabStop = false;
			this.groupBox3.Text = "Nudge Operation";
			// 
			// pid
			// 
			this.pid.Location = new System.Drawing.Point(136, 55);
			this.pid.Name = "pid";
			this.pid.Size = new System.Drawing.Size(128, 21);
			this.pid.TabIndex = 33;
			// 
			// checkBox17
			// 
			this.checkBox17.AutoSize = true;
			this.checkBox17.Checked = true;
			this.checkBox17.CheckState = System.Windows.Forms.CheckState.Checked;
			this.checkBox17.Enabled = false;
			this.checkBox17.Location = new System.Drawing.Point(10, 57);
			this.checkBox17.Name = "checkBox17";
			this.checkBox17.Size = new System.Drawing.Size(90, 16);
			this.checkBox17.TabIndex = 36;
			this.checkBox17.Text = "Chient PID:";
			this.checkBox17.UseVisualStyleBackColor = true;
			// 
			// checkBox16
			// 
			this.checkBox16.AutoSize = true;
			this.checkBox16.Checked = true;
			this.checkBox16.CheckState = System.Windows.Forms.CheckState.Checked;
			this.checkBox16.Enabled = false;
			this.checkBox16.Location = new System.Drawing.Point(11, 24);
			this.checkBox16.Name = "checkBox16";
			this.checkBox16.Size = new System.Drawing.Size(108, 16);
			this.checkBox16.TabIndex = 35;
			this.checkBox16.Text = "Drconfig Path:";
			this.checkBox16.UseVisualStyleBackColor = true;
			// 
			// Drconfig_Path
			// 
			this.Drconfig_Path.Location = new System.Drawing.Point(136, 22);
			this.Drconfig_Path.Name = "Drconfig_Path";
			this.Drconfig_Path.Size = new System.Drawing.Size(559, 21);
			this.Drconfig_Path.TabIndex = 33;
			// 
			// button6
			// 
			this.button6.Location = new System.Drawing.Point(714, 20);
			this.button6.Name = "button6";
			this.button6.Size = new System.Drawing.Size(66, 23);
			this.button6.TabIndex = 34;
			this.button6.Text = "Pick";
			this.button6.UseVisualStyleBackColor = true;
			this.button6.Click += new System.EventHandler(this.button6_Click);
			// 
			// nudge
			// 
			this.nudge.Location = new System.Drawing.Point(151, 637);
			this.nudge.Name = "nudge";
			this.nudge.Size = new System.Drawing.Size(140, 44);
			this.nudge.TabIndex = 37;
			this.nudge.Text = "Nudge Client";
			this.nudge.UseVisualStyleBackColor = true;
			this.nudge.Click += new System.EventHandler(this.nudge_Click);
			// 
			// button5
			// 
			this.button5.Location = new System.Drawing.Point(311, 637);
			this.button5.Name = "button5";
			this.button5.Size = new System.Drawing.Size(228, 44);
			this.button5.TabIndex = 33;
			this.button5.Text = "Start Windbg For Dump Symbol";
			this.button5.UseVisualStyleBackColor = true;
			this.button5.Click += new System.EventHandler(this.button5_Click);
			// 
			// groupBox4
			// 
			this.groupBox4.Controls.Add(this.button8);
			this.groupBox4.Controls.Add(this.label3);
			this.groupBox4.Controls.Add(this.Windbg_Argument);
			this.groupBox4.Controls.Add(this.label2);
			this.groupBox4.Controls.Add(this.label1);
			this.groupBox4.Controls.Add(this.Windbg_Script);
			this.groupBox4.Controls.Add(this.Windbg_Path);
			this.groupBox4.Controls.Add(this.button7);
			this.groupBox4.Location = new System.Drawing.Point(15, 461);
			this.groupBox4.Name = "groupBox4";
			this.groupBox4.Size = new System.Drawing.Size(789, 112);
			this.groupBox4.TabIndex = 38;
			this.groupBox4.TabStop = false;
			this.groupBox4.Text = "Windbg Option";
			// 
			// button8
			// 
			this.button8.Location = new System.Drawing.Point(714, 50);
			this.button8.Name = "button8";
			this.button8.Size = new System.Drawing.Size(66, 23);
			this.button8.TabIndex = 44;
			this.button8.Text = "Pick";
			this.button8.UseVisualStyleBackColor = true;
			this.button8.Click += new System.EventHandler(this.button8_Click);
			// 
			// label3
			// 
			this.label3.AutoSize = true;
			this.label3.Location = new System.Drawing.Point(9, 86);
			this.label3.Name = "label3";
			this.label3.Size = new System.Drawing.Size(101, 12);
			this.label3.TabIndex = 43;
			this.label3.Text = "Windbg Argument:";
			// 
			// Windbg_Argument
			// 
			this.Windbg_Argument.Location = new System.Drawing.Point(136, 82);
			this.Windbg_Argument.Name = "Windbg_Argument";
			this.Windbg_Argument.Size = new System.Drawing.Size(649, 21);
			this.Windbg_Argument.TabIndex = 42;
			// 
			// label2
			// 
			this.label2.AutoSize = true;
			this.label2.Location = new System.Drawing.Point(9, 54);
			this.label2.Name = "label2";
			this.label2.Size = new System.Drawing.Size(89, 12);
			this.label2.TabIndex = 41;
			this.label2.Text = "Windbg Script:";
			// 
			// label1
			// 
			this.label1.AutoSize = true;
			this.label1.Location = new System.Drawing.Point(9, 23);
			this.label1.Name = "label1";
			this.label1.Size = new System.Drawing.Size(77, 12);
			this.label1.TabIndex = 40;
			this.label1.Text = "Windbg Path:";
			// 
			// Windbg_Script
			// 
			this.Windbg_Script.Location = new System.Drawing.Point(136, 50);
			this.Windbg_Script.Name = "Windbg_Script";
			this.Windbg_Script.Size = new System.Drawing.Size(559, 21);
			this.Windbg_Script.TabIndex = 39;
			// 
			// Windbg_Path
			// 
			this.Windbg_Path.Location = new System.Drawing.Point(136, 19);
			this.Windbg_Path.Name = "Windbg_Path";
			this.Windbg_Path.Size = new System.Drawing.Size(559, 21);
			this.Windbg_Path.TabIndex = 37;
			// 
			// button7
			// 
			this.button7.Location = new System.Drawing.Point(713, 18);
			this.button7.Name = "button7";
			this.button7.Size = new System.Drawing.Size(66, 23);
			this.button7.TabIndex = 38;
			this.button7.Text = "Pick";
			this.button7.UseVisualStyleBackColor = true;
			this.button7.Click += new System.EventHandler(this.button7_Click);
			// 
			// AutoCheck
			// 
			this.AutoCheck.Location = new System.Drawing.Point(16, 637);
			this.AutoCheck.Name = "AutoCheck";
			this.AutoCheck.Size = new System.Drawing.Size(119, 44);
			this.AutoCheck.TabIndex = 39;
			this.AutoCheck.Text = "Auto Detect";
			this.AutoCheck.UseVisualStyleBackColor = true;
			this.AutoCheck.Click += new System.EventHandler(this.AutoCheck_Click);
			// 
			// CMD_Line
			// 
			this.CMD_Line.Location = new System.Drawing.Point(16, 580);
			this.CMD_Line.Name = "CMD_Line";
			this.CMD_Line.Size = new System.Drawing.Size(788, 51);
			this.CMD_Line.TabIndex = 40;
			this.CMD_Line.Text = "";
			// 
			// Form1
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.ClientSize = new System.Drawing.Size(827, 687);
			this.Controls.Add(this.CMD_Line);
			this.Controls.Add(this.AutoCheck);
			this.Controls.Add(this.groupBox4);
			this.Controls.Add(this.button5);
			this.Controls.Add(this.groupBox3);
			this.Controls.Add(this.nudge);
			this.Controls.Add(this.start);
			this.Controls.Add(this.groupBox2);
			this.Controls.Add(this.groupBox1);
			this.Controls.Add(this.checkBox5);
			this.Controls.Add(this.button4);
			this.Controls.Add(this.Logger_Dir);
			this.Controls.Add(this.checkBox4);
			this.Controls.Add(this.button3);
			this.Controls.Add(this.Plugin_Path);
			this.Controls.Add(this.checkBox3);
			this.Controls.Add(this.checkBox2);
			this.Controls.Add(this.checkBox1);
			this.Controls.Add(this.button2);
			this.Controls.Add(this.Drrun_Path);
			this.Controls.Add(this.Program_Argument);
			this.Controls.Add(this.button1);
			this.Controls.Add(this.Start_Program);
			this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
			this.Name = "Form1";
			this.Text = "DynamoRIO Function Tracer Launcher";
			this.groupBox1.ResumeLayout(false);
			this.groupBox1.PerformLayout();
			this.groupBox2.ResumeLayout(false);
			this.groupBox2.PerformLayout();
			this.groupBox3.ResumeLayout(false);
			this.groupBox3.PerformLayout();
			this.groupBox4.ResumeLayout(false);
			this.groupBox4.PerformLayout();
			this.ResumeLayout(false);
			this.PerformLayout();

		}

		#endregion
		private System.Windows.Forms.TextBox Start_Program;
		private System.Windows.Forms.Button button1;
		private System.Windows.Forms.TextBox Program_Argument;
		private System.Windows.Forms.Button button2;
		private System.Windows.Forms.TextBox Drrun_Path;
		private System.Windows.Forms.CheckBox checkBox1;
		private System.Windows.Forms.CheckBox checkBox2;
		private System.Windows.Forms.CheckBox checkBox3;
		private System.Windows.Forms.CheckBox checkBox4;
		private System.Windows.Forms.Button button3;
		private System.Windows.Forms.TextBox Plugin_Path;
		private System.Windows.Forms.CheckBox checkBox5;
		private System.Windows.Forms.Button button4;
		private System.Windows.Forms.TextBox Logger_Dir;
		private System.Windows.Forms.CheckBox trace_module;
		private System.Windows.Forms.TextBox trace_module_value;
		private System.Windows.Forms.CheckBox target_module;
		private System.Windows.Forms.TextBox target_module_value;
		private System.Windows.Forms.CheckBox from_module;
		private System.Windows.Forms.TextBox from_module_value;
		private System.Windows.Forms.CheckBox target_offset;
		private System.Windows.Forms.TextBox target_offset_value;
		private System.Windows.Forms.CheckBox call_convention;
		private System.Windows.Forms.TextBox target_method_value;
		private System.Windows.Forms.CheckBox target_method;
		private System.Windows.Forms.ComboBox call_convention_value;
		private System.Windows.Forms.GroupBox groupBox1;
		private System.Windows.Forms.GroupBox groupBox2;
		private System.Windows.Forms.CheckBox restrict_func;
		private System.Windows.Forms.CheckBox follow_func;
		private System.Windows.Forms.CheckBox dump_text;
		private System.Windows.Forms.CheckBox alway_instruction;
		private System.Windows.Forms.Button start;
		private System.Windows.Forms.GroupBox groupBox3;
		private System.Windows.Forms.Button nudge;
		private System.Windows.Forms.TextBox pid;
		private System.Windows.Forms.CheckBox checkBox17;
		private System.Windows.Forms.CheckBox checkBox16;
		private System.Windows.Forms.TextBox Drconfig_Path;
		private System.Windows.Forms.Button button6;
		private System.Windows.Forms.CheckBox verbose;
		private System.Windows.Forms.CheckBox disable_traces;
		private System.Windows.Forms.Button button5;
		private System.Windows.Forms.GroupBox groupBox4;
		private System.Windows.Forms.TextBox Windbg_Script;
		private System.Windows.Forms.TextBox Windbg_Path;
		private System.Windows.Forms.Button button7;
		private System.Windows.Forms.Label label2;
		private System.Windows.Forms.Label label1;
		private System.Windows.Forms.Label label3;
		private System.Windows.Forms.TextBox Windbg_Argument;
		private System.Windows.Forms.Button button8;
		private System.Windows.Forms.Button AutoCheck;
		private System.Windows.Forms.RichTextBox CMD_Line;
	}
}

