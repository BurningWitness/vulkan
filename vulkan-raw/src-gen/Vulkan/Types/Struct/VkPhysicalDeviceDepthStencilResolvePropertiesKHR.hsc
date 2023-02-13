{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_depth_stencil_resolve

module Vulkan.Types.Struct.VkPhysicalDeviceDepthStencilResolvePropertiesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkResolveModeFlags
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceDepthStencilResolvePropertiesKHR" #-} VkPhysicalDeviceDepthStencilResolvePropertiesKHR =
       VkPhysicalDeviceDepthStencilResolvePropertiesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , supportedDepthResolveModes :: VkResolveModeFlags -- ^ supported depth resolve modes
         , supportedStencilResolveModes :: VkResolveModeFlags -- ^ supported stencil resolve modes
         , independentResolveNone :: VkBool32 -- ^ depth and stencil resolve modes can be set independently if one of them is none
         , independentResolve :: VkBool32 -- ^ depth and stencil resolve modes can be set independently
         }

instance Storable VkPhysicalDeviceDepthStencilResolvePropertiesKHR where
  sizeOf    _ = #{size      VkPhysicalDeviceDepthStencilResolvePropertiesKHR}
  alignment _ = #{alignment VkPhysicalDeviceDepthStencilResolvePropertiesKHR}

  peek ptr = 
    VkPhysicalDeviceDepthStencilResolvePropertiesKHR
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

instance Offset "sType" VkPhysicalDeviceDepthStencilResolvePropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceDepthStencilResolvePropertiesKHR, sType}

instance Offset "pNext" VkPhysicalDeviceDepthStencilResolvePropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceDepthStencilResolvePropertiesKHR, pNext}

instance Offset "supportedDepthResolveModes" VkPhysicalDeviceDepthStencilResolvePropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceDepthStencilResolvePropertiesKHR, supportedDepthResolveModes}

instance Offset "supportedStencilResolveModes" VkPhysicalDeviceDepthStencilResolvePropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceDepthStencilResolvePropertiesKHR, supportedStencilResolveModes}

instance Offset "independentResolveNone" VkPhysicalDeviceDepthStencilResolvePropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceDepthStencilResolvePropertiesKHR, independentResolveNone}

instance Offset "independentResolve" VkPhysicalDeviceDepthStencilResolvePropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceDepthStencilResolvePropertiesKHR, independentResolve}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceDepthStencilResolvePropertiesKHR where

#endif