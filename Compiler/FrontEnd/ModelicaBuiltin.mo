/*
 * This file is part of OpenModelica.
 *
 * Copyright (c) 1998-CurrentYear, Link�ping University,
 * Department of Computer and Information Science,
 * SE-58183 Link�ping, Sweden.
 *
 * All rights reserved.
 *
 * THIS PROGRAM IS PROVIDED UNDER THE TERMS OF GPL VERSION 3 
 * AND THIS OSMC PUBLIC LICENSE (OSMC-PL). 
 * ANY USE, REPRODUCTION OR DISTRIBUTION OF THIS PROGRAM CONSTITUTES RECIPIENT'S  
 * ACCEPTANCE OF THE OSMC PUBLIC LICENSE.
 *
 * The OpenModelica software and the Open Source Modelica
 * Consortium (OSMC) Public License (OSMC-PL) are obtained
 * from Link�ping University, either from the above address,
 * from the URLs: http://www.ida.liu.se/projects/OpenModelica or  
 * http://www.openmodelica.org, and in the OpenModelica distribution. 
 * GNU version 3 is obtained from: http://www.gnu.org/copyleft/gpl.html.
 *
 * This program is distributed WITHOUT ANY WARRANTY; without
 * even the implied warranty of  MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE, EXCEPT AS EXPRESSLY SET FORTH
 * IN THE BY RECIPIENT SELECTED SUBSIDIARY LICENSE CONDITIONS
 * OF OSMC-PL.
 *
 * See the full OSMC Public License conditions for more details.
 *
 */

function der "type for builtin operator der has unit type parameter to be able to express that
derivative of expression means an addition of 1/s on the unit dimension"
  input Real x(unit="'p");
  output Real dx(unit="'p/s");
external "builtin";
end der;

function initial
  output Boolean isInitial;
  annotation(__OpenModelica_Impure = true);
external "builtin";
end initial;

function terminal
  output Boolean isTerminal;
  annotation(__OpenModelica_Impure = true);
external "builtin";
end terminal;

type AssertionLevel_ = enumeration(error, warning);

function assert
  input Boolean condition;
  input String message;
  input AssertionLevel_ level;
external "builtin";
end assert;

function constrain
  input Real i1;
  input Real i2;
  input Real i3;
  output Real o1;
external "builtin";
end constrain;

function sample
  input Real start;
  input Real interval;
  // Implement it like this?
  // parameter input Real start(fixed=false);
  // parameter input Real interval(fixed=false);
  output Boolean isSample;
  annotation(__OpenModelica_Impure = true);
external "builtin";
end sample;

function ceil
  input Real x;
  output Real y;
external "builtin";
end ceil;

function floor
  input Real x;
  output Real y;
external "builtin";
end floor;

function integer
  input Real x;
  output Integer y;
external "builtin";
end integer;

function sqrt
  input Real x(unit="'p");
  output Real y(unit="'p(1/2)");
external "builtin";
end sqrt;

function sign
  input Real v;
  output Integer _sign;
external "builtin";
/* We do this with external "builtin" for now. But maybe we should inline it instead...
  annotation(__OpenModelica_EarlyInline = true);
algorithm
  _sign := noEvent(if v > 0 then 1 else if v < 0 then -1 else 0);
 */
end sign;

function identity
  input Integer arraySize;
  output Integer[arraySize,arraySize] outArray;
external "builtin";
end identity;

function semiLinear
  input Real x;
  input Real positiveSlope;
  input Real negativeSlope;
  output Real result;
external "builtin";
end semiLinear;

function edge
  input Boolean b;
  output Boolean edgeEvent;
  // TODO: Ceval parameters? Needed to remove the builtin handler
external "builtin";
end edge;

function sin
  input Real x;
  output Real y;
external "builtin";
end sin;

function cos
  input Real x;
  output Real y;
external "builtin";
end cos;

function tan
  input Real x;
  output Real y;
external "builtin";
end tan;

function sinh
  input Real x;
  output Real y;
external "builtin";
end sinh;

function cosh
  input Real x;
  output Real y;
external "builtin";
end cosh;

function tanh
  input Real x;
  output Real y;
external "builtin";
end tanh;

function asin
  input Real x;
  output Real y;
external "builtin";
end asin;

function acos
  input Real x;
  output Real y;
external "builtin";
end acos;

function atan
  input Real x;
  output Real y;
external "builtin";
end atan;

function atan2
  input Real x1;
  input Real x2;
  output Real y;
external "builtin";
end atan2;

function exp
  input Real x(unit="1");
  output Real y(unit="1");
external "builtin";
end exp;

function log
  input Real x(unit="1");
  output Real y(unit="1");
external "builtin";
end log;

function log10
  input Real x(unit="1");
  output Real y(unit="1");
external "builtin";
end log10;

function homotopy
  input Real actual;
  input Real simplified;
  output Real outValue;
external "builtin";
end homotopy;

// Dummy functions that can't be properly defined in Modelica, but used by
// SCodeFlatten to define which builtin functions exist (SCodeFlatten doesn't
// care how the functions are defined, only if they exist or not).

function div
/* Real or Integer in/output */
external "builtin";
end div;

function mod
/* Real or Integer in/output */
external "builtin";
end mod;

function rem
/* Real or Integer in/output */
external "builtin";
end rem;

function delay
  external "builtin";
end delay;

function abs
/* Real or Integer in/output */
  external "builtin";
end abs;

function min
  external "builtin";
end min;

function max
  external "builtin";
end max;

function sum
  external "builtin";
end sum;

function product
  external "builtin";
end product;

function transpose
  external "builtin";
end transpose;

function outerProduct
  external "builtin";
end outerProduct;

function symmetric
  external "builtin";
end symmetric;

function cross
  external "builtin";
end cross;

function skew
  external "builtin";
end skew;

function smooth
  external "builtin";
end smooth;

function diagonal
  external "builtin";
end diagonal;

function cardinality
  external "builtin";
end cardinality;

function array
  external "builtin";
end array;

function zeros
  external "builtin";
end zeros;

function ones
  external "builtin";
end ones;

function fill
  external "builtin";
end fill;

function linspace
  external "builtin";
end linspace;

function noEvent
  external "builtin";
end noEvent;

function pre
  external "builtin";
end pre;

function change
  external "builtin";
end change;

function reinit
  external "builtin";
end reinit;

function ndims
  external "builtin";
end ndims;

function size
  external "builtin";
end size;

function scalar
  external "builtin";
end scalar;

function vector
  external "builtin";
end vector;

function matrix
  external "builtin";
end matrix;

function cat
  external "builtin";
end cat;

function rooted "Not standard Modelica"
  external "builtin";
end rooted;

function actualStream
  external "builtin";
end actualStream;

function inStream
  external "builtin";
end inStream;

encapsulated package Connections
  function branch
    external "builtin";
  end branch;

  function root
    external "builtin";
  end root;

  function potentialRoot
    external "builtin";
  end potentialRoot;

  function isRoot
    external "builtin";
  end isRoot;
end Connections;

encapsulated package Subtask
  type SamplingType = enumeration(Disabled, Continuous, Periodic);
  
  function decouple
    external "builtin";
  end decouple;

  function activated
    external "builtin";
  end activated;

  function lastInterval
    external "builtin";
  end lastInterval;
end Subtask;

function print "Not standard Modelica, but very useful for debugging."
  input String str;
  annotation(__OpenModelica_Impure = true);
external "builtin";
end print;

function classDirectory "Not standard Modelica"
  output String str;
external "builtin";
end classDirectory;

encapsulated package OpenModelica

type Code "Code quoting is not a uniontype yet because that would require enabling MetaModelica extensions in the regular compiler.
Besides, it has special semantics."

type TypeName "A path, for example the name of a class, e.g. A.B.C or .A.B" end TypeName;
type VariableName "A variable name, e.g. a.b or a[1].b[3].c" end VariableName;
type VariableNames "An array of variable names, e.g. {a.b,a[1].b[3].c}, or a single VariableName" end VariableNames;

end Code;

package Scripting
  
import OpenModelica.Code.TypeName;
import OpenModelica.Code.VariableName;
import OpenModelica.Code.VariableNames;

record CheckSettingsResult
  String OPENMODELICAHOME,OPENMODELICALIBRARY,OMC_PATH;
  Boolean OMC_FOUND;
  String MODELICAUSERCFLAGS,WORKING_DIRECTORY;
  Boolean CREATE_FILE_WORKS,REMOVE_FILE_WORKS;
  String OS, SYSTEM_INFO,SENDDATALIBS,C_COMPILER;
  Boolean C_COMPILER_RESPONDING;
  String CONFIGURE_CMDLINE;
end CheckSettingsResult;

function checkSettings "Display some diagnostics"
  output CheckSettingsResult result;
external "builtin";
end checkSettings;

function loadFile "load file (*.mo) and merge it with the loaded AST"
  input String fileName;
  output Boolean success;
external "builtin";
end loadFile;
 
function system "Similar to system(3). Executes the given command in the system shell."
  input String callStr "String to call: bash -c $callStr";
  output Integer retval "Return value of the system call; usually 0 on success";
external "builtin";
end system;

function saveAll "save the entire loaded AST to file"
  input String fileName;
  output Boolean success;
external "builtin";
end saveAll;

function help "display the OpenModelica help text"
  output String helpText;
  annotation(__OpenModelica_EarlyInline = true);
algorithm
  helpText := readFile(getInstallationDirectoryPath() + "/share/doc/omc/omc_helptext.txt");
end help;

function clear
  output Boolean success;
external "builtin";
end clear;

function clearVariables
  output Boolean success;
external "builtin";
end clearVariables;

function enableSendData
  input Boolean enabled;
  output Boolean success;
external "builtin";
end enableSendData;

function setDataPort
  input Integer port;
  output Boolean success;
external "builtin";
end setDataPort;

function generateHeader
  input String fileName;
  output Boolean success;
external "builtin";
end generateHeader;

function generateSeparateCode
  output Boolean success;
external "builtin";
end generateSeparateCode;

function setLinker
  input String linker;
  output Boolean success;
external "builtin";
end setLinker;

function setLinkerFlags
  input String linkerFlags;
  output Boolean success;
external "builtin";
end setLinkerFlags;

function setCompiler
  input String compiler;
  output Boolean success;
external "builtin";
end setCompiler;

function verifyCompiler
  output Boolean compilerWorks;
external "builtin";
end verifyCompiler;

function setCompilerPath
  input String compilerPath;
  output Boolean success;
external "builtin";
end setCompilerPath;

function getCompileCommand
  output String compileCommand;
external "builtin";
end getCompileCommand;

function setCompileCommand
  input String compileCommand;
  output Boolean success;
external "builtin";
end setCompileCommand;

function setPlotCommand
  input String plotCommand;
  output Boolean success;
external "builtin";
end setPlotCommand;

function getSettings
  output String settings;
  annotation(__OpenModelica_EarlyInline = true);
algorithm
  settings :=
    "Compile command: " + getCompileCommand() + "\n" +
    "Temp folder path: " + getTempDirectoryPath() + "\n" +
    "Installation folder: " + getInstallationDirectoryPath() + "\n" +
    "Modelica path: " + getModelicaPath() + "\n";
end getSettings;

function setTempDirectoryPath
  input String tempDirectoryPath;
  output Boolean success;
external "builtin";
end setTempDirectoryPath;

function getTempDirectoryPath
  output String tempDirectoryPath;
external "builtin";
end getTempDirectoryPath;

function getEnvironmentVar
  input String var;
  output String value "returns empty string on failure";
external "builtin";
end getEnvironmentVar;

function setEnvironmentVar
  input String var;
  input String value;
  output Boolean success;
external "builtin";
end setEnvironmentVar;

function appendEnvironmentVar
  input String var;
  input String value;
  output String result "returns \"error\" if the variable could not be appended";
  annotation(__OpenModelica_EarlyInline = true);
algorithm
  result := if setEnvironmentVar(var,getEnvironmentVar(var)+value) then getEnvironmentVar(var) else "error";
end appendEnvironmentVar;
        
function setInstallationDirectoryPath "Sets the OPENMODELICAHOME environment variable. Use this method instead of setEnvironmentVar"
  input String installationDirectoryPath;
  output Boolean success;
external "builtin";
end setInstallationDirectoryPath;

function getInstallationDirectoryPath "This returns OPENMODELICAHOME if it is set; on some platforms the default path is returned if it is not set."
  output String installationDirectoryPath;
external "builtin";
end getInstallationDirectoryPath;

function setModelicaPath "The Modelica Library Path - MODELICAPATH in the language specification; OPENMODELICALIBRARY in OpenModelica."
  input String modelicaPath;
  output Boolean success;
external "builtin";
end setModelicaPath;

function getModelicaPath "The Modelica Library Path - MODELICAPATH in the language specification; OPENMODELICALIBRARY in OpenModelica."
  output String modelicaPath;
external "builtin";
end getModelicaPath;

function setCompilerFlags
  input String compilerFlags;
  output Boolean success;
external "builtin";
end setCompilerFlags;

function setDebugFlags "example input: failtrace,-noevalfunc"
  input String debugFlags;
  output Boolean success;
  annotation(__OpenModelica_EarlyInline = true);
algorithm
  success := setCommandLineOptions("+d=" + debugFlags);
end setDebugFlags;

function setCommandLineOptions
  "The input is a regular command-line flag given to OMC, e.g. +d=failtrace or +g=MetaModelica"
  input String option;
  output Boolean success;
external "builtin";
end setCommandLineOptions;

function getVersion
  "Returns the version of the Modelica compiler"
  output String version;
external "builtin";
end getVersion;

function readFile
  "The contents of the given file are returned.
  Note that if the function fails, the error message is returned as a string instead of multiple output or similar."
  input String fileName;
  output String contents;
external "builtin";
end readFile;

function readFileShowLineNumbers "Prefixes each line in the file with <n>:, where n is the line number"
  input String fileName;
  output String out;
protected
  String line;
  Integer num:=1;
algorithm
  out := "";
  for line in strtok(readFile(fileName),"\n") loop
    out := out + String(num) + ": " + line + "\n";
    num := num + 1;
  end for;
end readFileShowLineNumbers;

function readFilePostprocessLineDirective "
  Searches lines for the #modelicaLine directive. If it is found, all lines up
  until the next #modelicaLine or #endModelicaLine are put on a single file,
  following a #line linenumber \"filename\" line.
  This causes GCC to output an executable that we can set breakpoints in and
  debug.
  Note: You could use a stack to keep track of start/end of #modelicaLine and
  match them up. But this is not really desirable since that will cause extra
  breakpoints for the same line (you would get breakpoints before and after
  each case if you break on a match-expression, etc).
  "
  input String fileName;
  output String out;
protected
  constant String regexStart := "^ *..#modelicaLine";
  constant String regexEnd := "^ *..#endModelicaLine";
  constant String regexSplit := "^ *..#modelicaLine .([A-Za-z.]*):([0-9]*):[0-9]*-[0-9]*:[0-9]*...$";
  constant Integer numInRegex := 3;
  String str,line,currentModelicaFileName;
  Integer lineNumInOutputFile:=1,numMatches:=0;
  Boolean insideModelicaLine:=false;
  String splitLine[numInRegex] := {"","",""};
algorithm
  str := readFile(fileName);
  out := "";
  for line in strtok(str,"\n") loop
    (numMatches,splitLine) := regex(line,regexSplit,numInRegex);
    if numMatches == 3 then
      insideModelicaLine := true;
      out := out + "#line " + splitLine[3] + " \"" + splitLine[2] + "\"\n";
      lineNumInOutputFile := lineNumInOutputFile + 1;
    elseif regexBool(line,regexEnd) then
      insideModelicaLine := false;
      out := out + "\n" + "#line " + String(lineNumInOutputFile+1) + " \"" + fileName + "\"\n";
      lineNumInOutputFile := lineNumInOutputFile + 3;
    elseif insideModelicaLine then
      out := out + " " + line;
    else
      out := out + line + "\n";
      lineNumInOutputFile := lineNumInOutputFile + 1;
    end if;
  end for;
end readFilePostprocessLineDirective;

function regex  "Sets the error buffer and returns -1 if the regex does not compile.

  The returned result is the same as POSIX regex():
  The first value is the complete matched string
  The rest are the substrings that you wanted.
  For example:
  regex(lorem,\" \\([A-Za-z]*\\) \\([A-Za-z]*\\) \",maxMatches=3)
  => {\" ipsum dolor \",\"ipsum\",\"dolor\"}
  This means if you have n groups, you want maxMatches=n+1
"
  input String str;
  input String re;
  input Integer maxMatches := 1 "The maximum number of matches that will be returned";
  input Boolean extended := true "Use POSIX extended or regular syntax";
  input Boolean caseInsensitive := false;
  output Integer numMatches "-1 is an error, 0 means no match, else returns a number 1..maxMatches";
  output String matchedSubstrings[maxMatches] "unmatched strings are returned as empty";
external "builtin";
end regex;

function regexBool "Returns true if the string matches the regular expression"
  input String str;
  input String re;
  input Boolean extended := true "Use POSIX extended or regular syntax";
  input Boolean caseInsensitive := false;
  output Boolean matches;
protected
  Integer numMatches;
algorithm
  numMatches := regex(str,re,0,extended,caseInsensitive);
  matches := numMatches == 1;
end regexBool;

function readFileNoNumeric
  "Returns the contents of the file, with anything resembling a (real) number stripped out, and at the end adding:
  Filter count from number domain: n.
  This should probably be changed to multiple outputs; the filtered string and an integer.
  Does anyone use this API call?"
  input String fileName;
  output String contents;
external "builtin";
end readFileNoNumeric;

function getErrorString
  "[file.mo:n:n-n:n:b] Error: message"
  output String errorString;
external "builtin";
end getErrorString;

function getMessagesString
  "see getErrorString()"
  output String messagesString;
external "builtin" messagesString=getErrorString();
end getMessagesString;

function getMessagesStringInternal
  "{{[file.mo:n:n-n:n:b] Error: message, TRANSLATION, Error, code}}"
  output String messagesString;
external "builtin";
end getMessagesStringInternal;

function clearMessages "Clears the error buffer"
  output Boolean success;
external "builtin";
end clearMessages;

function runScript "Runs the mos-script specified by the filename."
  input String fileName "*.mos";
  output String result;
external "builtin";
end runScript;

function echo "echo(false) disables Interactive output, echo(true) enables it again."
  input Boolean setEcho;
  output Boolean newEcho;
external "builtin";
end echo;

function getClassesInModelicaPath "MathCore-specific or not? Who knows!"
  output String classesInModelicaPath;
external "builtin";
end getClassesInModelicaPath;

function strictRMLCheck "Checks if any loaded function"
  output String message "empty if there was no problem";
external "builtin";
end strictRMLCheck;

/* These don't influence anything...
function getClassNamesForSimulation
  output String classNamesForSimulation;
external "builtin";
end getClassNamesForSimulation;

function setClassNamesForSimulation
  input String classNamesForSimulation;
  output Boolean success;
external "builtin";
end setClassNamesForSimulation;
*/

function getAnnotationVersion
  output String annotationVersion;
external "builtin";
end getAnnotationVersion;

function setAnnotationVersion
  input String annotationVersion;
  output Boolean success;
  annotation(__OpenModelica_EarlyInline = true);
algorithm
  success := setCommandLineOptions("+annotationVersion=" + annotationVersion); 
end setAnnotationVersion;

function getNoSimplify
  output Boolean noSimplify;
external "builtin";
end getNoSimplify;

function setNoSimplify
  input Boolean noSimplify;
  output Boolean success;
external "builtin";
end setNoSimplify;

function getVectorizationLimit
  output Integer vectorizationLimit;
external "builtin";
end getVectorizationLimit;

function setVectorizationLimit
  input Integer vectorizationLimit;
  output Boolean success;
  annotation(__OpenModelica_EarlyInline = true);
algorithm
  success := setCommandLineOptions("+v=" + String(vectorizationLimit));
end setVectorizationLimit;

function setShowAnnotations
  input Boolean show;
  output Boolean success;
external "builtin";
end setShowAnnotations;

function getShowAnnotations
  output Boolean show;
external "builtin";
end getShowAnnotations;

function setOrderConnections
  input Boolean orderConnections;
  output Boolean success;
  annotation(__OpenModelica_EarlyInline = true);
algorithm
  success := setCommandLineOptions("+orderConnections=" + String(orderConnections));
end setOrderConnections;

function getOrderConnections
  output Boolean orderConnections;
external "builtin";
end getOrderConnections;

function getAstAsCorbaString "Print the whole AST on the CORBA format for records, e.g.
  record Absyn.PROGRAM
    classes = ...,
    within_ = ...,
    globalBuildTimes = ...
  end Absyn.PROGRAM;"
  input String fileName := "<interactive>";
  output String result "returns the string if fileName is interactive; else it returns ok or error depending on if writing the file succeeded";
external "builtin";
end getAstAsCorbaString;

function cd "change directory to the given path (which may be either relative or absolute)
  returns the new working directory on success or a message on failure
  if the given path is the empty string, the function simply returns the current working directory
  "
  input String newWorkingDirectory := "";
  output String workingDirectory;
external "builtin";
end cd;

function checkModel
  input TypeName className;
  output String result;
external "builtin";
end checkModel;

function checkAllModelsRecursive
  input TypeName className;
  output String result;
external "builtin";
end checkAllModelsRecursive;

function typeOf
  input VariableName variableName;
  output String result;
external "builtin";
end typeOf;

function instantiateModel
  input TypeName className;
  output String result;
external "builtin";
end instantiateModel;

function generateCode "The input is a function name for which C-code is generated and compiled into a dll/so"
  input TypeName className;
  output Boolean success;
external "builtin";
end generateCode;

function loadModel "Parses the getModelicaPath(), and finds the package to load. If the input is Modelica.XXX, the complete Modelica AST is loaded."
  input TypeName className;
  output Boolean success;
external "builtin";
end loadModel;

function deleteFile "Deletes a file with the given name"
  input String fileName;
  output Boolean success;
external "builtin";
end deleteFile;

function saveModel
  input String fileName;
  input TypeName className;
  output Boolean success;
external "builtin";
end saveModel;

function saveTotalModel
  input String fileName;
  input TypeName className;
  output Boolean success;
external "builtin";
end saveTotalModel;

function save
  input TypeName className;
  output Boolean success;
external "builtin";
end save;

function translateGraphics
  input TypeName className;
  output String result;
external "builtin";
end translateGraphics;

function readSimulationResult "Reads a result file, returning a matrix corresponding to the variables and size given."
  input String filename;
  input VariableNames variables;
  input Integer size := 0 "0=read any size... If the size is not the same as the result-file, this function fails";
  output Real result[:,:];
external "builtin";
end readSimulationResult;

function readSimulationResultSize "The number of intervals that are present in the output file"
  input String fileName;
  output Integer sz;
external "builtin";
end readSimulationResultSize;

function readSimulationResultVars "Returns the variables in the simulation file; you can use val() and plot() commands using these names"
  input String fileName;
  output String[:] vars;
external "builtin";
end readSimulationResultVars;

function codeToString
  input Code className;
  output String string;
external "builtin";
end codeToString;

function dumpXMLDAE
  input TypeName className;
  input String translationLevel := "flat";
  input Boolean addOriginalIncidenceMatrix := false;
  input Boolean addSolvingInfo := false;
  input Boolean addMathMLCode := false;
  input Boolean dumpResiduals := false;
  input String fileNamePrefix := "<default>" "this is the className in string form by default";
  input Boolean storeInTemp := false;
  output String result[2] "Contents, Message/Filename; why is this an array and not 2 output arguments?";
external "builtin";
end dumpXMLDAE;

function listVariables "Lists the names of the active variables in the scripting environment."
  output TypeName variables[:];
external "builtin";
end listVariables;

function val "Works on the filename pointed to by the scripting variable currentSimulationResult.
  The result is the value of the variable at a certain time point.
  For parameters, any time may be given. For variables the startTime<=time<=stopTime needs to hold.
  On error, nan (Not a Number) is returned and the error buffer contains the message."
  input VariableName var;
  input Real time;
  output Real valAtTime;
external "builtin";
end val;

function strtok "Splits the strings at the places given by the token, for example:
  strtok(\"abcbdef\",\"b\") => {\"a\",\"c\",\"def\"}"
  input String string;
  input String token;
  output String[:] strings;
external "builtin";
end strtok;

function list "Lists the contents of the given class, or all loaded classes"
  input TypeName class_ := $TypeName(AllLoadedClasses);
  output String contents;
external "builtin";
end list;

partial function basePlotFunction "Extending this does not seem to work at the moment. A real shame; functions below are copy-paste and all need to be updated if the interface changes."
  input String fileName := "<default>" "The filename containing the variables. <default> will read the last simulation result";
  input String interpolation := "linear" "
    Determines if the simulation data should be interpolated to allow drawing of continuous lines in the diagram.
    \"linear\" results in linear interpolation between data points, \"constant\" keeps the value of the last known
    data point until a new one is found and \"none\" results in a diagram where only known data points are plotted."
  ;
  input String title := "Plot by OpenModelica" "This text will be used as the diagram title.";
  input Boolean legend := true "Determines whether or not the variable legend is shown.";
  input Boolean grid := true "Determines whether or not a grid is shown in the diagram.";
  input Boolean logX := false "Determines whether or not the horizontal axis is logarithmically scaled.";
  input Boolean logY := false "Determines whether or not the vertical axis is logarithmically scaled.";
  input String xLabel := "time" "This text will be used as the horizontal label in the diagram.";
  input String yLabel := "" "This text will be used as the vertical label in the diagram.";
  input Boolean points := false "Determines whether or not the data points should be indicated by a dot in the diagram.";
  input Real xRange[2] := {0.0,0.0} "Determines the horizontal interval that is visible in the diagram. {0,0} will select a suitable range.";
  input Real yRange[2] := {0.0,0.0} "Determines the vertical interval that is visible in the diagram. {0,0} will select a suitable range.";
  output Boolean success "Returns true on success";
end basePlotFunction;

function plot "Launches a plot window using OMPlotWindow. Returns true on success.
  If OpenModelica was compiled without sendData support, this function will return false.
  
  Example command sequences:
  simulate(A);plot({x,y,z});
  simulate(A);plot(x);
  simulate(A,fileNamePrefix=\"B\");simulate(C);plot(z,\"B.mat\",legend=false);
  "
  input VariableNames vars "The variables you want to plot";
  input String fileName := "<default>" "The filename containing the variables. <default> will read the last simulation result";
  input String interpolation := "linear" "
    Determines if the simulation data should be interpolated to allow drawing of continuous lines in the diagram.
    \"linear\" results in linear interpolation between data points, \"constant\" keeps the value of the last known
    data point until a new one is found and \"none\" results in a diagram where only known data points are plotted."
  ;
  input String title := "Plot by OpenModelica" "This text will be used as the diagram title.";
  input Boolean legend := true "Determines whether or not the variable legend is shown.";
  input Boolean grid := true "Determines whether or not a grid is shown in the diagram.";
  input Boolean logX := false "Determines whether or not the horizontal axis is logarithmically scaled.";
  input Boolean logY := false "Determines whether or not the vertical axis is logarithmically scaled.";
  input String xLabel := "time" "This text will be used as the horizontal label in the diagram.";
  input String yLabel := "" "This text will be used as the vertical label in the diagram.";
  input Boolean points := false "Determines whether or not the data points should be indicated by a dot in the diagram.";
  input Real xRange[2] := {0.0,0.0} "Determines the horizontal interval that is visible in the diagram. {0,0} will select a suitable range.";
  input Real yRange[2] := {0.0,0.0} "Determines the vertical interval that is visible in the diagram. {0,0} will select a suitable range.";
  output Boolean success "Returns true on success";
external "builtin";
end plot;

function plotAll "Works in the same way as plot(), but does not accept any
  variable names as input. Instead, all variables are part of the plot window.
  
  Example command sequences:
  simulate(A);plotAll();
  simulate(A,fileNamePrefix=\"B\");simulate(C);plotAll(x,\"B.mat\");
  "
  input String fileName := "<default>" "The filename containing the variables. <default> will read the last simulation result";
  input String interpolation := "linear" "
    Determines if the simulation data should be interpolated to allow drawing of continuous lines in the diagram.
    \"linear\" results in linear interpolation between data points, \"constant\" keeps the value of the last known
    data point until a new one is found and \"none\" results in a diagram where only known data points are plotted."
  ;
  input String title := "Plot by OpenModelica" "This text will be used as the diagram title.";
  input Boolean legend := true "Determines whether or not the variable legend is shown.";
  input Boolean grid := true "Determines whether or not a grid is shown in the diagram.";
  input Boolean logX := false "Determines whether or not the horizontal axis is logarithmically scaled.";
  input Boolean logY := false "Determines whether or not the vertical axis is logarithmically scaled.";
  input String xLabel := "time" "This text will be used as the horizontal label in the diagram.";
  input String yLabel := "" "This text will be used as the vertical label in the diagram.";
  input Boolean points := false "Determines whether or not the data points should be indicated by a dot in the diagram.";
  input Real xRange[2] := {0.0,0.0} "Determines the horizontal interval that is visible in the diagram. {0,0} will select a suitable range.";
  input Real yRange[2] := {0.0,0.0} "Determines the vertical interval that is visible in the diagram. {0,0} will select a suitable range.";
  output Boolean success "Returns true on success";
external "builtin";
end plotAll;

function plot2 "Uses the Java-based plot window (ptplot.jar) to launch a plot,
  similar to the plot() command. This command accepts fewer options, but works
  even when OpenModelica was not compiled with sendData support.
  
  Example command sequences:
  simulate(A);plot2({x,y});
  simulate(A,fileNamePrefix=\"B\");simulate(C);plot2(x,\"B.mat\");
  "
  input VariableNames vars;
  input String fileName := "<default>";
  output Boolean success "Returns true on success";
external "builtin";
end plot2;

function visualize "Uses the 3D visualization package, SimpleVisual.mo, to
  visualize the model. See chapter 3.4 (3D Animation) of the OpenModelica
  System Documentation for more details.
  
  Example command sequence:
  simulate(A,outputFormat=\"plt\");visualize(A);
  "
  input TypeName classToVisualize;
  output Boolean success "Returns true on success";
end visualize;

function plotParametric "Plots the y-variables as a function of the x-variable.

  Example command sequences:
  simulate(A);plotParametric(x,y);
  simulate(A,fileNamePrefix=\"B\");simulate(C);plotParametric(x,{y1,y2,y3},fileName=\"B.mat\",yLabel=\"[V]\");
  "
  input VariableName xVariable;
  input VariableNames yVariables;
  input String fileName := "<default>" "The filename containing the variables. <default> will read the last simulation result";
  input String interpolation := "linear" "
    Determines if the simulation data should be interpolated to allow drawing of continuous lines in the diagram.
    \"linear\" results in linear interpolation between data points, \"constant\" keeps the value of the last known
    data point until a new one is found and \"none\" results in a diagram where only known data points are plotted."
  ;
  input String title := "Plot by OpenModelica" "This text will be used as the diagram title.";
  input Boolean legend := true "Determines whether or not the variable legend is shown.";
  input Boolean grid := true "Determines whether or not a grid is shown in the diagram.";
  input Boolean logX := false "Determines whether or not the horizontal axis is logarithmically scaled.";
  input Boolean logY := false "Determines whether or not the vertical axis is logarithmically scaled.";
  input String xLabel := "" "This text will be used as the horizontal label in the diagram.";
  input String yLabel := "" "This text will be used as the vertical label in the diagram.";
  input Boolean points := false "Determines whether or not the data points should be indicated by a dot in the diagram.";
  input Real xRange[2] := {0.0,0.0} "Determines the horizontal interval that is visible in the diagram. {0,0} will select a suitable range.";
  input Real yRange[2] := {0.0,0.0} "Determines the vertical interval that is visible in the diagram. {0,0} will select a suitable range.";
  output Boolean success "Returns true on success";
external "builtin";
end plotParametric;

function plotParametric2 "Plots the y-variables as a function of the x-variable.

  Example command sequences:
  simulate(A);plotParametric2(x,y);
  simulate(A,fileNamePrefix=\"B\");simulate(C);plotParametric2(x,{y1,y2,y3},\"B.mat\");
  "
  input VariableName xVariable;
  input VariableNames yVariables;
  input String fileName := "<default>";
  output Boolean success "Returns true on success";
external "builtin";
end plotParametric2;

function getBuiltinAttribute
  input String attribute;
  input VariableName var;
  input TypeName cl;
  output String value;
external "builtin";
end getBuiltinAttribute;

function getUnit
  input VariableName var;
  input TypeName cl;
  output String unit;
external "builtin" unit=getBuiltinAttribute("unit",cl,var);
end getUnit;

function getQuantity
  input VariableName var;
  input TypeName cl;
  output String quantity;
external "builtin" quantity=getBuiltinAttribute("quantity",cl,var);
end getQuantity;

function getDisplayUnit
  input VariableName var;
  input TypeName cl;
  output String displayUnit;
external "builtin" displayUnit=getBuiltinAttribute("displayUnit",cl,var);
end getDisplayUnit;

function getMin
  input VariableName var;
  input TypeName cl;
  output String min;
external "builtin" min=getBuiltinAttribute("min",cl,var);
end getMin;

function getMax
  input VariableName var;
  input TypeName cl;
  output String max;
external "builtin" max=getBuiltinAttribute("max",cl,var);
end getMax;

function getStart
  input VariableName var;
  input TypeName cl;
  output String start;
external "builtin" start=getBuiltinAttribute("start",cl,var);
end getStart;

function getFixed
  input VariableName var;
  input TypeName cl;
  output String fixed; // Boolean?
external "builtin" fixed=getBuiltinAttribute("fixed",cl,var);
end getFixed;

function getNominal
  input VariableName var;
  input TypeName cl;
  output String nominal; // Real?
external "builtin" nominal=getBuiltinAttribute("nominal",cl,var);
end getNominal;

function getStateSelect
  input VariableName var;
  input TypeName cl;
  output String stateSelect; // StateSelect output?
external "builtin" stateSelect=getBuiltinAttribute("stateSelect",cl,var);
end getStateSelect;

end Scripting;
end OpenModelica;
