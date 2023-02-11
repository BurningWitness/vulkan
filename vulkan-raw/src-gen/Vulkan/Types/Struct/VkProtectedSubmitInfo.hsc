{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkProtectedSubmitInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkProtectedSubmitInfo" #-} VkProtectedSubmitInfo =
       VkProtectedSubmitInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , protectedSubmit :: VkBool32 -- ^ Submit protected command buffers
         }

instance Storable VkProtectedSubmitInfo where
  sizeOf    _ = #{size      struct VkProtectedSubmitInfo}
  alignment _ = #{alignment struct VkProtectedSubmitInfo}

  peek ptr = 
    VkProtectedSubmitInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"protectedSubmit" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"protectedSubmit" ptr val

instance Offset "sType" VkProtectedSubmitInfo where
  rawOffset = #{offset struct VkProtectedSubmitInfo, sType}

instance Offset "pNext" VkProtectedSubmitInfo where
  rawOffset = #{offset struct VkProtectedSubmitInfo, pNext}

instance Offset "protectedSubmit" VkProtectedSubmitInfo where
  rawOffset = #{offset struct VkProtectedSubmitInfo, protectedSubmit}

#else

module Vulkan.Types.Struct.VkProtectedSubmitInfo where

#endif