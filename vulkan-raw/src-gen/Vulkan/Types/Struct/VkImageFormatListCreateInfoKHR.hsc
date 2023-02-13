{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_image_format_list

module Vulkan.Types.Struct.VkImageFormatListCreateInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkFormat
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkImageFormatListCreateInfoKHR" #-} VkImageFormatListCreateInfoKHR =
       VkImageFormatListCreateInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , viewFormatCount :: #{type uint32_t}
         , pViewFormats :: Ptr VkFormat
         }

instance Storable VkImageFormatListCreateInfoKHR where
  sizeOf    _ = #{size      VkImageFormatListCreateInfoKHR}
  alignment _ = #{alignment VkImageFormatListCreateInfoKHR}

  peek ptr = 
    VkImageFormatListCreateInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"viewFormatCount" ptr)
       <*> peek (offset @"pViewFormats" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"viewFormatCount" ptr val
    pokeField @"pViewFormats" ptr val

instance Offset "sType" VkImageFormatListCreateInfoKHR where
  rawOffset = #{offset VkImageFormatListCreateInfoKHR, sType}

instance Offset "pNext" VkImageFormatListCreateInfoKHR where
  rawOffset = #{offset VkImageFormatListCreateInfoKHR, pNext}

instance Offset "viewFormatCount" VkImageFormatListCreateInfoKHR where
  rawOffset = #{offset VkImageFormatListCreateInfoKHR, viewFormatCount}

instance Offset "pViewFormats" VkImageFormatListCreateInfoKHR where
  rawOffset = #{offset VkImageFormatListCreateInfoKHR, pViewFormats}

#else

module Vulkan.Types.Struct.VkImageFormatListCreateInfoKHR where

#endif