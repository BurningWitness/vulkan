{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_image_drm_format_modifier && VK_KHR_format_feature_flags2

module Vulkan.Types.Struct.VkDrmFormatModifierPropertiesList2EXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkDrmFormatModifierProperties2EXT



data {-# CTYPE "vulkan/vulkan.h" "VkDrmFormatModifierPropertiesList2EXT" #-} VkDrmFormatModifierPropertiesList2EXT =
       VkDrmFormatModifierPropertiesList2EXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , drmFormatModifierCount :: #{type uint32_t}
         , pDrmFormatModifierProperties :: Ptr VkDrmFormatModifierProperties2EXT
         }

instance Storable VkDrmFormatModifierPropertiesList2EXT where
  sizeOf    _ = #{size      VkDrmFormatModifierPropertiesList2EXT}
  alignment _ = #{alignment VkDrmFormatModifierPropertiesList2EXT}

  peek ptr = 
    VkDrmFormatModifierPropertiesList2EXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"drmFormatModifierCount" ptr)
       <*> peek (offset @"pDrmFormatModifierProperties" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"drmFormatModifierCount" ptr val
    pokeField @"pDrmFormatModifierProperties" ptr val

instance Offset "sType" VkDrmFormatModifierPropertiesList2EXT where
  rawOffset = #{offset VkDrmFormatModifierPropertiesList2EXT, sType}

instance Offset "pNext" VkDrmFormatModifierPropertiesList2EXT where
  rawOffset = #{offset VkDrmFormatModifierPropertiesList2EXT, pNext}

instance Offset "drmFormatModifierCount" VkDrmFormatModifierPropertiesList2EXT where
  rawOffset = #{offset VkDrmFormatModifierPropertiesList2EXT, drmFormatModifierCount}

instance Offset "pDrmFormatModifierProperties" VkDrmFormatModifierPropertiesList2EXT where
  rawOffset = #{offset VkDrmFormatModifierPropertiesList2EXT, pDrmFormatModifierProperties}

#else

module Vulkan.Types.Struct.VkDrmFormatModifierPropertiesList2EXT where

#endif