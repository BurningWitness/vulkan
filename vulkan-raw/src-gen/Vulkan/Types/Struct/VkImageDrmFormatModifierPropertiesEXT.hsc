{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_image_drm_format_modifier

module Vulkan.Types.Struct.VkImageDrmFormatModifierPropertiesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkImageDrmFormatModifierPropertiesEXT" #-} VkImageDrmFormatModifierPropertiesEXT =
       VkImageDrmFormatModifierPropertiesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , drmFormatModifier :: #{type uint64_t}
         }

instance Storable VkImageDrmFormatModifierPropertiesEXT where
  sizeOf    _ = #{size      struct VkImageDrmFormatModifierPropertiesEXT}
  alignment _ = #{alignment struct VkImageDrmFormatModifierPropertiesEXT}

  peek ptr = 
    VkImageDrmFormatModifierPropertiesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"drmFormatModifier" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"drmFormatModifier" ptr val

instance Offset "sType" VkImageDrmFormatModifierPropertiesEXT where
  rawOffset = #{offset struct VkImageDrmFormatModifierPropertiesEXT, sType}

instance Offset "pNext" VkImageDrmFormatModifierPropertiesEXT where
  rawOffset = #{offset struct VkImageDrmFormatModifierPropertiesEXT, pNext}

instance Offset "drmFormatModifier" VkImageDrmFormatModifierPropertiesEXT where
  rawOffset = #{offset struct VkImageDrmFormatModifierPropertiesEXT, drmFormatModifier}

#else

module Vulkan.Types.Struct.VkImageDrmFormatModifierPropertiesEXT where

#endif