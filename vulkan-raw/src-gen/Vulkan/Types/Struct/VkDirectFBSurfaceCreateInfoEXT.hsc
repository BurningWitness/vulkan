{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
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
  sizeOf    _ = #{size      VkDirectFBSurfaceCreateInfoEXT}
  alignment _ = #{alignment VkDirectFBSurfaceCreateInfoEXT}

  peek ptr = 
    VkDirectFBSurfaceCreateInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"dfb" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"surface" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"dfb" ptr val
    pokeField @"surface" ptr val

instance Offset "sType" VkDirectFBSurfaceCreateInfoEXT where
  rawOffset = #{offset VkDirectFBSurfaceCreateInfoEXT, sType}

instance Offset "pNext" VkDirectFBSurfaceCreateInfoEXT where
  rawOffset = #{offset VkDirectFBSurfaceCreateInfoEXT, pNext}

instance Offset "flags" VkDirectFBSurfaceCreateInfoEXT where
  rawOffset = #{offset VkDirectFBSurfaceCreateInfoEXT, flags}

instance Offset "dfb" VkDirectFBSurfaceCreateInfoEXT where
  rawOffset = #{offset VkDirectFBSurfaceCreateInfoEXT, dfb}

instance Offset "surface" VkDirectFBSurfaceCreateInfoEXT where
  rawOffset = #{offset VkDirectFBSurfaceCreateInfoEXT, surface}

#else

module Vulkan.Types.Struct.VkDirectFBSurfaceCreateInfoEXT where

#endif