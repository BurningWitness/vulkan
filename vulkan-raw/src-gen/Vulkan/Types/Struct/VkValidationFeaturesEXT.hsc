{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_validation_features

module Vulkan.Types.Struct.VkValidationFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkValidationFeatureDisableEXT
import Vulkan.Types.Enum.VkValidationFeatureEnableEXT



data {-# CTYPE "vulkan/vulkan.h" "VkValidationFeaturesEXT" #-} VkValidationFeaturesEXT =
       VkValidationFeaturesEXT
         { sType :: VkStructureType -- ^ Must be VK_STRUCTURE_TYPE_VALIDATION_FEATURES_EXT
         , pNext :: Ptr ()
         , enabledValidationFeatureCount :: #{type uint32_t} -- ^ Number of validation features to enable
         , pEnabledValidationFeatures :: Ptr VkValidationFeatureEnableEXT -- ^ Validation features to enable
         , disabledValidationFeatureCount :: #{type uint32_t} -- ^ Number of validation features to disable
         , pDisabledValidationFeatures :: Ptr VkValidationFeatureDisableEXT -- ^ Validation features to disable
         }

instance Storable VkValidationFeaturesEXT where
  sizeOf    _ = #{size      VkValidationFeaturesEXT}
  alignment _ = #{alignment VkValidationFeaturesEXT}

  peek ptr = 
    VkValidationFeaturesEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"enabledValidationFeatureCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pEnabledValidationFeatures" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"disabledValidationFeatureCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pDisabledValidationFeatures" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"enabledValidationFeatureCount" ptr val
    pokeField @"pEnabledValidationFeatures" ptr val
    pokeField @"disabledValidationFeatureCount" ptr val
    pokeField @"pDisabledValidationFeatures" ptr val

instance Offset "sType" VkValidationFeaturesEXT where
  rawOffset = #{offset VkValidationFeaturesEXT, sType}

instance Offset "pNext" VkValidationFeaturesEXT where
  rawOffset = #{offset VkValidationFeaturesEXT, pNext}

instance Offset "enabledValidationFeatureCount" VkValidationFeaturesEXT where
  rawOffset = #{offset VkValidationFeaturesEXT, enabledValidationFeatureCount}

instance Offset "pEnabledValidationFeatures" VkValidationFeaturesEXT where
  rawOffset = #{offset VkValidationFeaturesEXT, pEnabledValidationFeatures}

instance Offset "disabledValidationFeatureCount" VkValidationFeaturesEXT where
  rawOffset = #{offset VkValidationFeaturesEXT, disabledValidationFeatureCount}

instance Offset "pDisabledValidationFeatures" VkValidationFeaturesEXT where
  rawOffset = #{offset VkValidationFeaturesEXT, pDisabledValidationFeatures}

#else

module Vulkan.Types.Struct.VkValidationFeaturesEXT where

#endif