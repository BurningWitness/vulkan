{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NVX_binary_import

module Vulkan.Types.Struct.VkCuModuleCreateInfoNVX where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkCuModuleCreateInfoNVX" #-} VkCuModuleCreateInfoNVX =
       VkCuModuleCreateInfoNVX
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , dataSize :: #{type size_t}
         , pData :: Ptr ()
         }

instance Storable VkCuModuleCreateInfoNVX where
  sizeOf    _ = #{size      struct VkCuModuleCreateInfoNVX}
  alignment _ = #{alignment struct VkCuModuleCreateInfoNVX}

  peek ptr = 
    VkCuModuleCreateInfoNVX
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"dataSize" ptr)
       <*> peek (offset @"pData" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"dataSize" ptr val
    pokeField @"pData" ptr val

instance Offset "sType" VkCuModuleCreateInfoNVX where
  rawOffset = #{offset struct VkCuModuleCreateInfoNVX, sType}

instance Offset "pNext" VkCuModuleCreateInfoNVX where
  rawOffset = #{offset struct VkCuModuleCreateInfoNVX, pNext}

instance Offset "dataSize" VkCuModuleCreateInfoNVX where
  rawOffset = #{offset struct VkCuModuleCreateInfoNVX, dataSize}

instance Offset "pData" VkCuModuleCreateInfoNVX where
  rawOffset = #{offset struct VkCuModuleCreateInfoNVX, pData}

#else

module Vulkan.Types.Struct.VkCuModuleCreateInfoNVX where

#endif