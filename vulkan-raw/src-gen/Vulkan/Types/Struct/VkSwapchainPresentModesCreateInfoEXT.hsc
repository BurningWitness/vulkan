{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_swapchain_maintenance1

module Vulkan.Types.Struct.VkSwapchainPresentModesCreateInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkPresentModeKHR
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkSwapchainPresentModesCreateInfoEXT" #-} VkSwapchainPresentModesCreateInfoEXT =
       VkSwapchainPresentModesCreateInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , presentModeCount :: #{type uint32_t}
         , pPresentModes :: Ptr VkPresentModeKHR
         }

instance Storable VkSwapchainPresentModesCreateInfoEXT where
  sizeOf    _ = #{size      VkSwapchainPresentModesCreateInfoEXT}
  alignment _ = #{alignment VkSwapchainPresentModesCreateInfoEXT}

  peek ptr = 
    VkSwapchainPresentModesCreateInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"presentModeCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pPresentModes" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"presentModeCount" ptr val
    pokeField @"pPresentModes" ptr val

instance Offset "sType" VkSwapchainPresentModesCreateInfoEXT where
  rawOffset = #{offset VkSwapchainPresentModesCreateInfoEXT, sType}

instance Offset "pNext" VkSwapchainPresentModesCreateInfoEXT where
  rawOffset = #{offset VkSwapchainPresentModesCreateInfoEXT, pNext}

instance Offset "presentModeCount" VkSwapchainPresentModesCreateInfoEXT where
  rawOffset = #{offset VkSwapchainPresentModesCreateInfoEXT, presentModeCount}

instance Offset "pPresentModes" VkSwapchainPresentModesCreateInfoEXT where
  rawOffset = #{offset VkSwapchainPresentModesCreateInfoEXT, pPresentModes}

#else

module Vulkan.Types.Struct.VkSwapchainPresentModesCreateInfoEXT where

#endif