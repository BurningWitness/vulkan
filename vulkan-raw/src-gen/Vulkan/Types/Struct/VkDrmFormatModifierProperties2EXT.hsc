{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_image_drm_format_modifier && VK_KHR_format_feature_flags2

module Vulkan.Types.Struct.VkDrmFormatModifierProperties2EXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkFormatFeatureFlags2



data {-# CTYPE "vulkan/vulkan.h" "VkDrmFormatModifierProperties2EXT" #-} VkDrmFormatModifierProperties2EXT =
       VkDrmFormatModifierProperties2EXT
         { drmFormatModifier :: #{type uint64_t}
         , drmFormatModifierPlaneCount :: #{type uint32_t}
         , drmFormatModifierTilingFeatures :: VkFormatFeatureFlags2
         }

instance Storable VkDrmFormatModifierProperties2EXT where
  sizeOf    _ = #{size      VkDrmFormatModifierProperties2EXT}
  alignment _ = #{alignment VkDrmFormatModifierProperties2EXT}

  peek ptr = 
    VkDrmFormatModifierProperties2EXT
       <$> peek (Foreign.Storable.Offset.offset @"drmFormatModifier" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"drmFormatModifierPlaneCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"drmFormatModifierTilingFeatures" ptr)

  poke ptr val = do
    pokeField @"drmFormatModifier" ptr val
    pokeField @"drmFormatModifierPlaneCount" ptr val
    pokeField @"drmFormatModifierTilingFeatures" ptr val

instance Offset "drmFormatModifier" VkDrmFormatModifierProperties2EXT where
  rawOffset = #{offset VkDrmFormatModifierProperties2EXT, drmFormatModifier}

instance Offset "drmFormatModifierPlaneCount" VkDrmFormatModifierProperties2EXT where
  rawOffset = #{offset VkDrmFormatModifierProperties2EXT, drmFormatModifierPlaneCount}

instance Offset "drmFormatModifierTilingFeatures" VkDrmFormatModifierProperties2EXT where
  rawOffset = #{offset VkDrmFormatModifierProperties2EXT, drmFormatModifierTilingFeatures}

#else

module Vulkan.Types.Struct.VkDrmFormatModifierProperties2EXT where

#endif