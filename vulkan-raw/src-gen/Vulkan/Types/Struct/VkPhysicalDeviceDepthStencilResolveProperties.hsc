{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Struct.VkPhysicalDeviceDepthStencilResolveProperties where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkResolveModeFlags
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceDepthStencilResolveProperties" #-} VkPhysicalDeviceDepthStencilResolveProperties =
       VkPhysicalDeviceDepthStencilResolveProperties
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , supportedDepthResolveModes :: VkResolveModeFlags -- ^ supported depth resolve modes
         , supportedStencilResolveModes :: VkResolveModeFlags -- ^ supported stencil resolve modes
         , independentResolveNone :: VkBool32 -- ^ depth and stencil resolve modes can be set independently if one of them is none
         , independentResolve :: VkBool32 -- ^ depth and stencil resolve modes can be set independently
         }

instance Storable VkPhysicalDeviceDepthStencilResolveProperties where
  sizeOf    _ = #{size      VkPhysicalDeviceDepthStencilResolveProperties}
  alignment _ = #{alignment VkPhysicalDeviceDepthStencilResolveProperties}

  peek ptr = 
    VkPhysicalDeviceDepthStencilResolveProperties
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"supportedDepthResolveModes" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"supportedStencilResolveModes" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"independentResolveNone" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"independentResolve" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"supportedDepthResolveModes" ptr val
    pokeField @"supportedStencilResolveModes" ptr val
    pokeField @"independentResolveNone" ptr val
    pokeField @"independentResolve" ptr val

instance Offset "sType" VkPhysicalDeviceDepthStencilResolveProperties where
  rawOffset = #{offset VkPhysicalDeviceDepthStencilResolveProperties, sType}

instance Offset "pNext" VkPhysicalDeviceDepthStencilResolveProperties where
  rawOffset = #{offset VkPhysicalDeviceDepthStencilResolveProperties, pNext}

instance Offset "supportedDepthResolveModes" VkPhysicalDeviceDepthStencilResolveProperties where
  rawOffset = #{offset VkPhysicalDeviceDepthStencilResolveProperties, supportedDepthResolveModes}

instance Offset "supportedStencilResolveModes" VkPhysicalDeviceDepthStencilResolveProperties where
  rawOffset = #{offset VkPhysicalDeviceDepthStencilResolveProperties, supportedStencilResolveModes}

instance Offset "independentResolveNone" VkPhysicalDeviceDepthStencilResolveProperties where
  rawOffset = #{offset VkPhysicalDeviceDepthStencilResolveProperties, independentResolveNone}

instance Offset "independentResolve" VkPhysicalDeviceDepthStencilResolveProperties where
  rawOffset = #{offset VkPhysicalDeviceDepthStencilResolveProperties, independentResolve}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceDepthStencilResolveProperties where

#endif