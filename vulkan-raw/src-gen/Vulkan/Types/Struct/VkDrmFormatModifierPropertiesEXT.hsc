{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
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
  sizeOf    _ = #{size      VkDrmFormatModifierPropertiesEXT}
  alignment _ = #{alignment VkDrmFormatModifierPropertiesEXT}

  peek ptr = 
    VkDrmFormatModifierPropertiesEXT
       <$> peek (Foreign.Storable.Offset.offset @"drmFormatModifier" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"drmFormatModifierPlaneCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"drmFormatModifierTilingFeatures" ptr)

  poke ptr val = do
    pokeField @"drmFormatModifier" ptr val
    pokeField @"drmFormatModifierPlaneCount" ptr val
    pokeField @"drmFormatModifierTilingFeatures" ptr val

instance Offset "drmFormatModifier" VkDrmFormatModifierPropertiesEXT where
  rawOffset = #{offset VkDrmFormatModifierPropertiesEXT, drmFormatModifier}

instance Offset "drmFormatModifierPlaneCount" VkDrmFormatModifierPropertiesEXT where
  rawOffset = #{offset VkDrmFormatModifierPropertiesEXT, drmFormatModifierPlaneCount}

instance Offset "drmFormatModifierTilingFeatures" VkDrmFormatModifierPropertiesEXT where
  rawOffset = #{offset VkDrmFormatModifierPropertiesEXT, drmFormatModifierTilingFeatures}

#else

module Vulkan.Types.Struct.VkDrmFormatModifierPropertiesEXT where

#endif