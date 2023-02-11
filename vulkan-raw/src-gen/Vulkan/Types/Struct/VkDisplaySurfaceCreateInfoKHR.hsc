{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_display

module Vulkan.Types.Struct.VkDisplaySurfaceCreateInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkDisplayPlaneAlphaFlagBitsKHR
import Vulkan.Types.Enum.VkDisplaySurfaceCreateFlagsKHR
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkSurfaceTransformFlagBitsKHR
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkExtent2D



data {-# CTYPE "vulkan/vulkan.h" "VkDisplaySurfaceCreateInfoKHR" #-} VkDisplaySurfaceCreateInfoKHR =
       VkDisplaySurfaceCreateInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkDisplaySurfaceCreateFlagsKHR
         , displayMode :: VkDisplayModeKHR -- ^ The mode to use when displaying this surface
         , planeIndex :: #{type uint32_t} -- ^ The plane on which this surface appears.  Must be between 0 and the value returned by vkGetPhysicalDeviceDisplayPlanePropertiesKHR() in pPropertyCount.
         , planeStackIndex :: #{type uint32_t} -- ^ The z-order of the plane.
         , transform :: VkSurfaceTransformFlagBitsKHR -- ^ Transform to apply to the images as part of the scanout operation
         , globalAlpha :: #{type float} -- ^ Global alpha value.  Must be between 0 and 1, inclusive.  Ignored if alphaMode is not VK_DISPLAY_PLANE_ALPHA_GLOBAL_BIT_KHR
         , alphaMode :: VkDisplayPlaneAlphaFlagBitsKHR -- ^ What type of alpha blending to use.  Must be a bit from vkGetDisplayPlanePropertiesKHR::supportedAlpha.
         , imageExtent :: VkExtent2D -- ^ size of the images to use with this surface
         }

instance Storable VkDisplaySurfaceCreateInfoKHR where
  sizeOf    _ = #{size      struct VkDisplaySurfaceCreateInfoKHR}
  alignment _ = #{alignment struct VkDisplaySurfaceCreateInfoKHR}

  peek ptr = 
    VkDisplaySurfaceCreateInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"displayMode" ptr)
       <*> peek (offset @"planeIndex" ptr)
       <*> peek (offset @"planeStackIndex" ptr)
       <*> peek (offset @"transform" ptr)
       <*> peek (offset @"globalAlpha" ptr)
       <*> peek (offset @"alphaMode" ptr)
       <*> peek (offset @"imageExtent" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"displayMode" ptr val
    pokeField @"planeIndex" ptr val
    pokeField @"planeStackIndex" ptr val
    pokeField @"transform" ptr val
    pokeField @"globalAlpha" ptr val
    pokeField @"alphaMode" ptr val
    pokeField @"imageExtent" ptr val

instance Offset "sType" VkDisplaySurfaceCreateInfoKHR where
  rawOffset = #{offset struct VkDisplaySurfaceCreateInfoKHR, sType}

instance Offset "pNext" VkDisplaySurfaceCreateInfoKHR where
  rawOffset = #{offset struct VkDisplaySurfaceCreateInfoKHR, pNext}

instance Offset "flags" VkDisplaySurfaceCreateInfoKHR where
  rawOffset = #{offset struct VkDisplaySurfaceCreateInfoKHR, flags}

instance Offset "displayMode" VkDisplaySurfaceCreateInfoKHR where
  rawOffset = #{offset struct VkDisplaySurfaceCreateInfoKHR, displayMode}

instance Offset "planeIndex" VkDisplaySurfaceCreateInfoKHR where
  rawOffset = #{offset struct VkDisplaySurfaceCreateInfoKHR, planeIndex}

instance Offset "planeStackIndex" VkDisplaySurfaceCreateInfoKHR where
  rawOffset = #{offset struct VkDisplaySurfaceCreateInfoKHR, planeStackIndex}

instance Offset "transform" VkDisplaySurfaceCreateInfoKHR where
  rawOffset = #{offset struct VkDisplaySurfaceCreateInfoKHR, transform}

instance Offset "globalAlpha" VkDisplaySurfaceCreateInfoKHR where
  rawOffset = #{offset struct VkDisplaySurfaceCreateInfoKHR, globalAlpha}

instance Offset "alphaMode" VkDisplaySurfaceCreateInfoKHR where
  rawOffset = #{offset struct VkDisplaySurfaceCreateInfoKHR, alphaMode}

instance Offset "imageExtent" VkDisplaySurfaceCreateInfoKHR where
  rawOffset = #{offset struct VkDisplaySurfaceCreateInfoKHR, imageExtent}

#else

module Vulkan.Types.Struct.VkDisplaySurfaceCreateInfoKHR where

#endif