package 'Part Tree Example' {
    part def Electrical {
        doc /*
             * Electrical parts have this documentation
             */
    }

    part def Mechanical;

    part Automobile {
        part 'Drive Train' {
            part Battery : Electrical;
            part Motor : Electrical;
        }

        part Chassis {
            part Suspension : Mechanical;
            part Body : Mechanical;
        }
    }
}
