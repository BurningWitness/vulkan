{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NN_vi_surface

module Vulkan.Types.Struct.VkViSurfaceCreateInfoNN where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkViSurfaceCreateFlagsNN



data {-# CTYPE "vulkan/vulkan.h" "VkViSurfaceCreateInfoNN" #-} VkViSurfaceCreateInfoNN =
       VkViSurfaceCreateInfoNN
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkViSurfaceCreateFlagsNN
         , window :: Ptr ()
         }

instance Storable VkViSurfaceCreateInfoNN where
  sizeOf    _ = #{size      VkViSurfaceCreateInfoNN}
  alignment _ = #{alignment VkViSurfaceCreateInfoNN}

  peek ptr = 
    VkViSurfaceCreateInfoNN
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"window" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"window" ptr val

instance Offset "sType" VkViSurfaceCreateInfoNN where
  rawOffset = #{offset VkViSurfaceCreateInfoNN, sType}

instance Offset "pNext" VkViSurfaceCreateInfoNN where
  rawOffset = #{offset VkViSurfaceCreateInfoNN, pNext}

instance Offset "flags" VkViSurfaceCreateInfoNN where
  rawOffset = #{offset VkViSurfaceCreateInfoNN, flags}

instance Offset "window" VkViSurfaceCreateInfoNN where
  rawOffset = #{offset VkViSurfaceCreateInfoNN, window}

#else

module Vulkan.Types.Struct.VkViSurfaceCreateInfoNN where

#endif