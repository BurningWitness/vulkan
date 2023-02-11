{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_directfb_surface

module Vulkan.Types.Struct.VkDirectFBSurfaceCreateInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Protected
import Vulkan.Types.Enum.VkDirectFBSurfaceCreateFlagsEXT
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkDirectFBSurfaceCreateInfoEXT" #-} VkDirectFBSurfaceCreateInfoEXT =
       VkDirectFBSurfaceCreateInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkDirectFBSurfaceCreateFlagsEXT
         , dfb :: Ptr IDirectFB
         , surface :: Ptr IDirectFBSurface
         }

instance Storable VkDirectFBSurfaceCreateInfoEXT where
  sizeOf    _ = #{size      struct VkDirectFBSurfaceCreateInfoEXT}
  alignment _ = #{alignment struct VkDirectFBSurfaceCreateInfoEXT}

  peek ptr = 
    VkDirectFBSurfaceCreateInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"dfb" ptr)
       <*> peek (offset @"surface" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"dfb" ptr val
    pokeField @"surface" ptr val

instance Offset "sType" VkDirectFBSurfaceCreateInfoEXT where
  rawOffset = #{offset struct VkDirectFBSurfaceCreateInfoEXT, sType}

instance Offset "pNext" VkDirectFBSurfaceCreateInfoEXT where
  rawOffset = #{offset struct VkDirectFBSurfaceCreateInfoEXT, pNext}

instance Offset "flags" VkDirectFBSurfaceCreateInfoEXT where
  rawOffset = #{offset struct VkDirectFBSurfaceCreateInfoEXT, flags}

instance Offset "dfb" VkDirectFBSurfaceCreateInfoEXT where
  rawOffset = #{offset struct VkDirectFBSurfaceCreateInfoEXT, dfb}

instance Offset "surface" VkDirectFBSurfaceCreateInfoEXT where
  rawOffset = #{offset struct VkDirectFBSurfaceCreateInfoEXT, surface}

#else

module Vulkan.Types.Struct.VkDirectFBSurfaceCreateInfoEXT where

#endif