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
  sizeOf    _ = #{size      VkImageDrmFormatModifierListCreateInfoEXT}
  alignment _ = #{alignment VkImageDrmFormatModifierListCreateInfoEXT}

  peek ptr = 
    VkImageDrmFormatModifierListCreateInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"drmFormatModifierCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pDrmFormatModifiers" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"drmFormatModifierCount" ptr val
    pokeField @"pDrmFormatModifiers" ptr val

instance Offset "sType" VkImageDrmFormatModifierListCreateInfoEXT where
  rawOffset = #{offset VkImageDrmFormatModifierListCreateInfoEXT, sType}

instance Offset "pNext" VkImageDrmFormatModifierListCreateInfoEXT where
  rawOffset = #{offset VkImageDrmFormatModifierListCreateInfoEXT, pNext}

instance Offset "drmFormatModifierCount" VkImageDrmFormatModifierListCreateInfoEXT where
  rawOffset = #{offset VkImageDrmFormatModifierListCreateInfoEXT, drmFormatModifierCount}

instance Offset "pDrmFormatModifiers" VkImageDrmFormatModifierListCreateInfoEXT where
  rawOffset = #{offset VkImageDrmFormatModifierListCreateInfoEXT, pDrmFormatModifiers}

#else

module Vulkan.Types.Struct.VkImageDrmFormatModifierListCreateInfoEXT where

#endif