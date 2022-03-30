GET_PROFILE_BY_CORRELATION_ID(correlationId) {

    return `

    SELECT

     AVG(ARRAY_LENGTH(OBJECT_NAMES(bp.company_profile.company_details))) AS avg,

     MIN(ARRAY_LENGTH(OBJECT_NAMES(bp.company_profile.company_details))) AS min,

     MAX(ARRAY_LENGTH(OBJECT_NAMES(bp.company_profile.company_details))) AS max

     FROM \`${this._bucketName}\` as bp

     WHERE LENGTH (META().id) = 36

     AND bp.company_profile IS NOT MISSING

    `

  }
