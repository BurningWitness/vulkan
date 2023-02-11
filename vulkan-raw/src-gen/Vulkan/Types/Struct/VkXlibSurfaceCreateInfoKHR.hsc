{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_xlib_surface

module Vulkan.Types.Struct.VkXlibSurfaceCreateInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Protected
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkXlibSurfaceCreateFlagsKHR



data {-# CTYPE "vulkan/vulkan.h" "VkXlibSurfaceCreateInfoKHR" #-} VkXlibSurfaceCreateInfoKHR =
       VkXlibSurfaceCreateInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkXlibSurfaceCreateFlagsKHR
         , dpy :: Ptr Display
         , window :: Window
         }

instance Storable VkXlibSurfaceCreateInfoKHR where
  sizeOf    _ = #{size      struct VkXlibSurfaceCreateInfoKHR}
  alignment _ = #{alignment struct VkXlibSurfaceCreateInfoKHR}

  peek ptr = 
    VkXlibSurfaceCreateInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"dpy" ptr)
       <*> peek (offset @"window" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"dpy" ptr val
    pokeField @"window" ptr val

instance Offset "sType" VkXlibSurfaceCreateInfoKHR where
  rawOffset = #{offset struct VkXlibSurfaceCreateInfoKHR, sType}

instance Offset "pNext" VkXlibSurfaceCreateInfoKHR where
  rawOffset = #{offset struct VkXlibSurfaceCreateInfoKHR, pNext}

instance Offset "flags" VkXlibSurfaceCreateInfoKHR where
  rawOffset = #{offset struct VkXlibSurfaceCreateInfoKHR, flags}

instance Offset "dpy" VkXlibSurfaceCreateInfoKHR where
  rawOffset = #{offset struct VkXlibSurfaceCreateInfoKHR, dpy}

instance Offset "window" VkXlibSurfaceCreateInfoKHR where
  rawOffset = #{offset struct VkXlibSurfaceCreateInfoKHR, window}

#else

module Vulkan.Types.Struct.VkXlibSurfaceCreateInfoKHR where

#endif