{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_maintenance2

module Vulkan.Types.Struct.VkImageViewUsageCreateInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkImageUsageFlags
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkImageViewUsageCreateInfoKHR" #-} VkImageViewUsageCreateInfoKHR =
       VkImageViewUsageCreateInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , usage :: VkImageUsageFlags
         }

instance Storable VkImageViewUsageCreateInfoKHR where
  sizeOf    _ = #{size      VkImageViewUsageCreateInfoKHR}
  alignment _ = #{alignment VkImageViewUsageCreateInfoKHR}

  peek ptr = 
    VkImageViewUsageCreateInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"usage" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"usage" ptr val

instance Offset "sType" VkImageViewUsageCreateInfoKHR where
  rawOffset = #{offset VkImageViewUsageCreateInfoKHR, sType}

instance Offset "pNext" VkImageViewUsageCreateInfoKHR where
  rawOffset = #{offset VkImageViewUsageCreateInfoKHR, pNext}

instance Offset "usage" VkImageViewUsageCreateInfoKHR where
  rawOffset = #{offset VkImageViewUsageCreateInfoKHR, usage}

#else

module Vulkan.Types.Struct.VkImageViewUsageCreateInfoKHR where

#endif