{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_image_drm_format_modifier

module Vulkan.Types.Struct.VkImageDrmFormatModifierExplicitCreateInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkSubresourceLayout



data {-# CTYPE "vulkan/vulkan.h" "VkImageDrmFormatModifierExplicitCreateInfoEXT" #-} VkImageDrmFormatModifierExplicitCreateInfoEXT =
       VkImageDrmFormatModifierExplicitCreateInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , drmFormatModifier :: #{type uint64_t}
         , drmFormatModifierPlaneCount :: #{type uint32_t}
         , pPlaneLayouts :: Ptr VkSubresourceLayout
         }

instance Storable VkImageDrmFormatModifierExplicitCreateInfoEXT where
  sizeOf    _ = #{size      struct VkImageDrmFormatModifierExplicitCreateInfoEXT}
  alignment _ = #{alignment struct VkImageDrmFormatModifierExplicitCreateInfoEXT}

  peek ptr = 
    VkImageDrmFormatModifierExplicitCreateInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"drmFormatModifier" ptr)
       <*> peek (offset @"drmFormatModifierPlaneCount" ptr)
       <*> peek (offset @"pPlaneLayouts" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"drmFormatModifier" ptr val
    pokeField @"drmFormatModifierPlaneCount" ptr val
    pokeField @"pPlaneLayouts" ptr val

instance Offset "sType" VkImageDrmFormatModifierExplicitCreateInfoEXT where
  rawOffset = #{offset struct VkImageDrmFormatModifierExplicitCreateInfoEXT, sType}

instance Offset "pNext" VkImageDrmFormatModifierExplicitCreateInfoEXT where
  rawOffset = #{offset struct VkImageDrmFormatModifierExplicitCreateInfoEXT, pNext}

instance Offset "drmFormatModifier" VkImageDrmFormatModifierExplicitCreateInfoEXT where
  rawOffset = #{offset struct VkImageDrmFormatModifierExplicitCreateInfoEXT, drmFormatModifier}

instance Offset "drmFormatModifierPlaneCount" VkImageDrmFormatModifierExplicitCreateInfoEXT where
  rawOffset = #{offset struct VkImageDrmFormatModifierExplicitCreateInfoEXT, drmFormatModifierPlaneCount}

instance Offset "pPlaneLayouts" VkImageDrmFormatModifierExplicitCreateInfoEXT where
  rawOffset = #{offset struct VkImageDrmFormatModifierExplicitCreateInfoEXT, pPlaneLayouts}

#else

module Vulkan.Types.Struct.VkImageDrmFormatModifierExplicitCreateInfoEXT where

#endif