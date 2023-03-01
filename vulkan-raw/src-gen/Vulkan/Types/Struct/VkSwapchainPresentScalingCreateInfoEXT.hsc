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
  sizeOf    _ = #{size      VkSwapchainPresentScalingCreateInfoEXT}
  alignment _ = #{alignment VkSwapchainPresentScalingCreateInfoEXT}

  peek ptr = 
    VkSwapchainPresentScalingCreateInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"scalingBehavior" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"presentGravityX" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"presentGravityY" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"scalingBehavior" ptr val
    pokeField @"presentGravityX" ptr val
    pokeField @"presentGravityY" ptr val

instance Offset "sType" VkSwapchainPresentScalingCreateInfoEXT where
  rawOffset = #{offset VkSwapchainPresentScalingCreateInfoEXT, sType}

instance Offset "pNext" VkSwapchainPresentScalingCreateInfoEXT where
  rawOffset = #{offset VkSwapchainPresentScalingCreateInfoEXT, pNext}

instance Offset "scalingBehavior" VkSwapchainPresentScalingCreateInfoEXT where
  rawOffset = #{offset VkSwapchainPresentScalingCreateInfoEXT, scalingBehavior}

instance Offset "presentGravityX" VkSwapchainPresentScalingCreateInfoEXT where
  rawOffset = #{offset VkSwapchainPresentScalingCreateInfoEXT, presentGravityX}

instance Offset "presentGravityY" VkSwapchainPresentScalingCreateInfoEXT where
  rawOffset = #{offset VkSwapchainPresentScalingCreateInfoEXT, presentGravityY}

#else

module Vulkan.Types.Struct.VkSwapchainPresentScalingCreateInfoEXT where

#endif