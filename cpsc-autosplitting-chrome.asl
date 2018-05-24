state("Google Chrome") {}
startup {
  print("Started from Chrome");
  settings.Add("all_missions", false, "All Missions");
		settings.Add("start_allmissions", false, "Start timer upon clicking start in Mission 1", "all_missions");
		settings.Add("split_allmissions", false, "Split at the end of every mission", "all_missions");
		
  settings.Add("jpa", false, "Jet Pack Adventure");
		settings.Add("start_jpa", false, "Start timer upon clicking start", "jpa");
		settings.Add("split_jpa", false, "Split at the end of every level", "jpa");
		
  settings.Add("thinice", false, "Thin Ice");
		settings.Add("start_thinice", false, "Start timer upon clicking start", "thinice");
		settings.Add("split_thinice", false, "Split at the end of every level", "thinice");
		
  settings.Add("astrobarrier", false, "Astro Barrier");
  		settings.Add("start_astrobarrier", false, "Start timer when clicking start", "astrobarrier");
		settings.Add("split_astrobarrier", false, "Split on level 5, level 10, level 15, level 20, level 30 and level 40", "astrobarrier");
		settings.Add("split_astrobarrier_secret", false, "Split at level 10 on secrets", "astrobarrier");
		settings.Add("split_astrobarrier_expert", false, "Split at level 10 on expert", "astrobarrier");
		
  settings.Add("beancounters", false, "Bean Counters");
  		settings.Add("start_beancounters", false, "Start timer when clicking start", "beancounters");
  		settings.Add("split_beancounters", false, "Split after every level", "beancounters");
		
  settings.Add("icefishing", false, "Ice Fishing");
  		settings.Add("start_icefishing", false, "Start timer when clicking start", "icefishing");
  		settings.Add("split_icefishing", false, "Split after every level (pink puffle comes out)", "icefishing");
		
  settings.Add("psa", false, "PSA Test");
  		settings.Add("start_psa", false, "Start the timer after clicking 'Yes' for the 'Are you sure?' chooser", "psa");
  		settings.Add("split_psa", false, "Split after completing test successfully", "psa");
		
  settings.Add("tour", false, "Become a Tour Guide");
  		settings.Add("start_tour", false, "Start the timer after clicking 'Take the Quiz'", "tour");
  		settings.Add("split_tour", false, "Split after completing test successfully", "tour");
}
init {
  string logPath;
	logPath = "C:\\xampp\\htdocs\\autosplitter\\autosplitter.txt";

  try { // Wipe the log file to clear out messages from last time
    FileStream fs = new FileStream(logPath, FileMode.Open, FileAccess.Write, FileShare.ReadWrite);
    fs.SetLength(0);
    fs.Close();
  } catch {} // May fail if file doesn't exist.
  vars.reader = new StreamReader(new FileStream(logPath, FileMode.Open, FileAccess.Read, FileShare.ReadWrite)); 
}

update {
  vars.line = vars.reader.ReadLine();
  if (vars.line == null) return false; // If no line was read, don't run any other blocks.
}

start {
	if (settings["start_allmissions"] && vars.line == "start_allmissions") {
		print("Started timer from starting Mission 1");
		return true;
	}
	if (settings["start_jpa"] && vars.line == "start_jpa") {
		print("Started timer from starting JPA");
		return true;
	}
	if (settings["start_thinice"] && vars.line == "start_thinice") {
		print("Started timer from starting Thin Ice");
		return true;
	}
	if (settings["start_astrobarrier"] && vars.line == "start_astrobarrier") {
		print("Started timer from starting Astro Barrier");
		return true;
	}	
	if (settings["start_beancounters"] && vars.line == "start_beancounters") {
		print("Started timer from starting Bean Counters");
		return true;
	}
	if (settings["start_icefishing"] && vars.line == "start_icefishing") {
		print("Started timer from starting Ice Fishing");
		return true;
	}
	if (settings["start_psa"] && vars.line == "start_psa") {
		print("Started timer from starting PSA Test");
		return true;
	}
	if (settings["start_tour"] && vars.line == "start_tour") {
		print("Started timer from starting Tour Test");
		return true;
	}
	
}

split {
	if (settings["split_allmissions"] && vars.line == "split_allmissions") {
		print("Split from All Missions");
		return true;
	}
	if (settings["split_jpa"] && vars.line == "split_jpa") {
		print("Split from jpa");
		return true;
	}
	if (settings["split_thinice"] && vars.line == "split_thinice") {
		print("Split from Thin Ice");
		return true;
	}
	if (settings["split_astrobarrier"] && vars.line == "split_astrobarrier") {
		print("Split from Astro Barrier");
		return true;
	}	
	if (settings["split_astrobarrier_secret"] && vars.line == "split_astrobarrier_secret") {
		print("Split from Astro Barrier Secret");
		return true;
	}	
	if (settings["split_astrobarrier_expert"] && vars.line == "split_astrobarrier_expert") {
		print("Split from Astro Barrier Expert");
		return true;
	}	
	if (settings["split_beancounters"] && vars.line == "split_beancounters") {
		print("Split from Bean Counters");
		return true;
	}
	if (settings["split_icefishing"] && vars.line == "split_icefishing") {
		print("Split from Ice Fishing");
		return true;
	}
	if (settings["split_psa"] && vars.line == "split_psa") {
		print("Split from PSA Test");
		return true;
	}
	if (settings["split_tour"] && vars.line == "split_tour") {
		print("Split from PSA Test");
		return true;
	}
}