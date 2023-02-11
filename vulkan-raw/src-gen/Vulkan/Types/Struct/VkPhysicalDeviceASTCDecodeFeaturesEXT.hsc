{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_astc_decode_mode

module Vulkan.Types.Struct.VkPhysicalDeviceASTCDecodeFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceASTCDecodeFeaturesEXT" #-} VkPhysicalDeviceASTCDecodeFeaturesEXT =
       VkPhysicalDeviceASTCDecodeFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , decodeModeSharedExponent :: VkBool32
         }

instance Storable VkPhysicalDeviceASTCDecodeFeaturesEXT where
  sizeOf    _ = #{size      struct VkPhysicalDeviceASTCDecodeFeaturesEXT}
  alignment _ = #{alignment struct VkPhysicalDeviceASTCDecodeFeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceASTCDecodeFeaturesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"decodeModeSharedExponent" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"decodeModeSharedExponent" ptr val

instance Offset "sType" VkPhysicalDeviceASTCDecodeFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceASTCDecodeFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceASTCDecodeFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceASTCDecodeFeaturesEXT, pNext}

instance Offset "decodeModeSharedExponent" VkPhysicalDeviceASTCDecodeFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceASTCDecodeFeaturesEXT, decodeModeSharedExponent}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceASTCDecodeFeaturesEXT where

#endif