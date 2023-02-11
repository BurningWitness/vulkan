{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_swapchain_maintenance1

module Vulkan.Types.Struct.VkSwapchainPresentScalingCreateInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkPresentGravityFlagsEXT
import Vulkan.Types.Enum.VkPresentScalingFlagsEXT
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkSwapchainPresentScalingCreateInfoEXT" #-} VkSwapchainPresentScalingCreateInfoEXT =
       VkSwapchainPresentScalingCreateInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , scalingBehavior :: VkPresentScalingFlagsEXT
         , presentGravityX :: VkPresentGravityFlagsEXT
         , presentGravityY :: VkPresentGravityFlagsEXT
         }

instance Storable VkSwapchainPresentScalingCreateInfoEXT where
  sizeOf    _ = #{size      struct VkSwapchainPresentScalingCreateInfoEXT}
  alignment _ = #{alignment struct VkSwapchainPresentScalingCreateInfoEXT}

  peek ptr = 
    VkSwapchainPresentScalingCreateInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"scalingBehavior" ptr)
       <*> peek (offset @"presentGravityX" ptr)
       <*> peek (offset @"presentGravityY" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"scalingBehavior" ptr val
    pokeField @"presentGravityX" ptr val
    pokeField @"presentGravityY" ptr val

instance Offset "sType" VkSwapchainPresentScalingCreateInfoEXT where
  rawOffset = #{offset struct VkSwapchainPresentScalingCreateInfoEXT, sType}

instance Offset "pNext" VkSwapchainPresentScalingCreateInfoEXT where
  rawOffset = #{offset struct VkSwapchainPresentScalingCreateInfoEXT, pNext}

instance Offset "scalingBehavior" VkSwapchainPresentScalingCreateInfoEXT where
  rawOffset = #{offset struct VkSwapchainPresentScalingCreateInfoEXT, scalingBehavior}

instance Offset "presentGravityX" VkSwapchainPresentScalingCreateInfoEXT where
  rawOffset = #{offset struct VkSwapchainPresentScalingCreateInfoEXT, presentGravityX}

instance Offset "presentGravityY" VkSwapchainPresentScalingCreateInfoEXT where
  rawOffset = #{offset struct VkSwapchainPresentScalingCreateInfoEXT, presentGravityY}

#else

module Vulkan.Types.Struct.VkSwapchainPresentScalingCreateInfoEXT where

#endif