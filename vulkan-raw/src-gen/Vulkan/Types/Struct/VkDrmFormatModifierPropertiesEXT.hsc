{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_image_drm_format_modifier

module Vulkan.Types.Struct.VkDrmFormatModifierPropertiesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkFormatFeatureFlags



data {-# CTYPE "vulkan/vulkan.h" "VkDrmFormatModifierPropertiesEXT" #-} VkDrmFormatModifierPropertiesEXT =
       VkDrmFormatModifierPropertiesEXT
         { drmFormatModifier :: #{type uint64_t}
         , drmFormatModifierPlaneCount :: #{type uint32_t}
         , drmFormatModifierTilingFeatures :: VkFormatFeatureFlags
         }

instance Storable VkDrmFormatModifierPropertiesEXT where
  sizeOf    _ = #{size      struct VkDrmFormatModifierPropertiesEXT}
  alignment _ = #{alignment struct VkDrmFormatModifierPropertiesEXT}

  peek ptr = 
    VkDrmFormatModifierPropertiesEXT
       <$> peek (offset @"drmFormatModifier" ptr)
       <*> peek (offset @"drmFormatModifierPlaneCount" ptr)
       <*> peek (offset @"drmFormatModifierTilingFeatures" ptr)

  poke ptr val = do
    pokeField @"drmFormatModifier" ptr val
    pokeField @"drmFormatModifierPlaneCount" ptr val
    pokeField @"drmFormatModifierTilingFeatures" ptr val

instance Offset "drmFormatModifier" VkDrmFormatModifierPropertiesEXT where
  rawOffset = #{offset struct VkDrmFormatModifierPropertiesEXT, drmFormatModifier}

instance Offset "drmFormatModifierPlaneCount" VkDrmFormatModifierPropertiesEXT where
  rawOffset = #{offset struct VkDrmFormatModifierPropertiesEXT, drmFormatModifierPlaneCount}

instance Offset "drmFormatModifierTilingFeatures" VkDrmFormatModifierPropertiesEXT where
  rawOffset = #{offset struct VkDrmFormatModifierPropertiesEXT, drmFormatModifierTilingFeatures}

#else

module Vulkan.Types.Struct.VkDrmFormatModifierPropertiesEXT where

#endif