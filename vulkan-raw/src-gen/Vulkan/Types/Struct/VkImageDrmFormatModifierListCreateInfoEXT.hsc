{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_image_drm_format_modifier

module Vulkan.Types.Struct.VkImageDrmFormatModifierListCreateInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkImageDrmFormatModifierListCreateInfoEXT" #-} VkImageDrmFormatModifierListCreateInfoEXT =
       VkImageDrmFormatModifierListCreateInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , drmFormatModifierCount :: #{type uint32_t}
         , pDrmFormatModifiers :: Ptr #{type uint64_t}
         }

instance Storable VkImageDrmFormatModifierListCreateInfoEXT where
  sizeOf    _ = #{size      struct VkImageDrmFormatModifierListCreateInfoEXT}
  alignment _ = #{alignment struct VkImageDrmFormatModifierListCreateInfoEXT}

  peek ptr = 
    VkImageDrmFormatModifierListCreateInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"drmFormatModifierCount" ptr)
       <*> peek (offset @"pDrmFormatModifiers" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"drmFormatModifierCount" ptr val
    pokeField @"pDrmFormatModifiers" ptr val

instance Offset "sType" VkImageDrmFormatModifierListCreateInfoEXT where
  rawOffset = #{offset struct VkImageDrmFormatModifierListCreateInfoEXT, sType}

instance Offset "pNext" VkImageDrmFormatModifierListCreateInfoEXT where
  rawOffset = #{offset struct VkImageDrmFormatModifierListCreateInfoEXT, pNext}

instance Offset "drmFormatModifierCount" VkImageDrmFormatModifierListCreateInfoEXT where
  rawOffset = #{offset struct VkImageDrmFormatModifierListCreateInfoEXT, drmFormatModifierCount}

instance Offset "pDrmFormatModifiers" VkImageDrmFormatModifierListCreateInfoEXT where
  rawOffset = #{offset struct VkImageDrmFormatModifierListCreateInfoEXT, pDrmFormatModifiers}

#else

module Vulkan.Types.Struct.VkImageDrmFormatModifierListCreateInfoEXT where

#endif